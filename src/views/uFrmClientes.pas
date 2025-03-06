unit uFrmClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  uFrmBaseCadastro, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.StdCtrls,
  FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.Stan.Intf, FireDAC.Comp.UI,
  uClienteController, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Stan.StorageBin, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef;

type
  TfrmClientes = class(TfrmBaseCadastro)
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    edtNome: TEdit;
    edtCpf: TEdit;
    edtTelefone: TEdit;
    edtEmail: TEdit;
    edtCEP: TEdit;
    edtLogradouro: TEdit;
    edtLogradouroNumero: TEdit;
    edtCidade: TEdit;
    edtBairro: TEdit;
    FDMemTableID_CLIENTE: TIntegerField;
    FDMemTableNOME: TStringField;
    FDMemTableCPF: TStringField;
    FDMemTableTELEFONE: TStringField;
    FDMemTableEMAIL: TStringField;
    FDMemTableDATA_CADASTRO: TSQLTimeStampField;
    FDMemTableCEP: TStringField;
    FDMemTableLOGRADOURO: TStringField;
    FDMemTableLOGRADOURO_NUMERO: TStringField;
    FDMemTableCIDADE: TStringField;
    FDMemTableBAIRRO: TStringField;
    procedure lblMenuSalvarClick(Sender: TObject);
    procedure Label16Click(Sender: TObject);
    procedure DBGridCellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClientes: TfrmClientes;

implementation

uses
  uCliente, System.UITypes;

{$R *.dfm}

procedure TfrmClientes.DBGridCellClick(Column: TColumn);
var
  vController: TClienteController;
begin
  inherited;
  vController := TClienteController.Create;

  try

    if Column.Index = DBGrid.Columns.Count - 2 then
    begin

      lblMenuNovo.onClick(Self);

      FTransactionState := tsEdit;

      edtNome.Text := FDMemTableNOME.AsString;
      edtCpf.Text := FDMemTableCPF.AsString;
      edtTelefone.Text := FDMemTableTELEFONE.AsString;
      edtEmail.Text := FDMemTableEMAIL.AsString;
      edtCEP.Text := FDMemTableCEP.AsString;
      edtLogradouro.Text := FDMemTableLOGRADOURO.AsString;
      edtLogradouroNumero.Text := FDMemTableLOGRADOURO_NUMERO.AsString;
      edtCidade.Text := FDMemTableCIDADE.AsString;
      edtBairro.Text := FDMemTableBAIRRO.AsString;

    end
    else if Column.Index = DBGrid.Columns.Count - 1 then
    begin
      if MessageDlg('Deseja realmente excluir o registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        vController.ExcluirCliente(FDMemTableID_CLIENTE.AsInteger);
        FDMemTable.Delete;
      end;
    end;
  finally
    vController.Free;
  end;
end;

procedure TfrmClientes.Label16Click(Sender: TObject);
var
  vController: TClienteController;
  vCliente: TCliente;
begin
  vController := TClienteController.Create;
  vCliente := TCliente.create;
  try
    vCliente.Nome := edtNome.Text;
    vCliente.CPF := edtCpf.Text;
    vCliente.Telefone := edtTelefone.Text;
    vCliente.Email := edtEmail.Text;
    vCliente.CEP := edtCEP.Text;
    vCliente.Logradouro := edtLogradouro.Text;
    vCliente.Numero := edtLogradouroNumero.Text;
    vCliente.Cidade := edtCidade.Text;
    vCliente.Bairro := edtBairro.Text;

    FDMemTable.CloneCursor(vController.ListarClientes(vCliente));

    inherited;
  finally
    vController.Free;
    vCliente.Free;
  end;
end;

procedure TfrmClientes.lblMenuSalvarClick(Sender: TObject);
var
  vController: TClienteController;
  vValidacao: TStringList;
  vCliente: TCliente;
begin
  vValidacao := TStringList.Create;
  vCliente := TCliente.create;

  try
    if Trim(edtNome.Text) = '' then
      vValidacao.Add('- Nome é um campo obrigatório');

    if Trim(edtCpf.Text) = '' then
      vValidacao.Add('- CPF é um campo obrigatório');

    if Trim(edtTelefone.Text) = '' then
      vValidacao.Add('- Telefone é um campo obrigatório');

    if Trim(edtEmail.Text) = '' then
      vValidacao.Add('- Email é um campo obrigatório');

    if Trim(edtCEP.Text) = '' then
      vValidacao.Add('- CEP é um campo obrigatório');

    if Trim(edtLogradouroNumero.Text) = '' then
      vValidacao.Add('- Número do logradouro é um campo obrigatório');

    if vValidacao.Count > 0 then
    begin
      MessageDlg(vValidacao.Text, mtError, [mbOK], 0);
      Abort;
    end;

    vCliente.Nome := edtNome.Text;
    vCliente.CPF := edtCpf.Text;
    vCliente.Telefone := edtTelefone.Text;
    vCliente.Email := edtEmail.Text;
    vCliente.CEP := edtCEP.Text;
    vCliente.Logradouro := edtLogradouro.Text;
    vCliente.Numero := edtLogradouroNumero.Text;
    vCliente.Cidade := edtCidade.Text;
    vCliente.Bairro := edtBairro.Text;

    vController := TClienteController.Create;
    try
      try
        case FTransactionState of
          tsInsert:
            begin
              vController.InserirCliente(vCliente);
              MessageDlg('Cliente incluído com sucesso', mtInformation, [mbOK], 0);
            end;
          tsEdit:
            begin
              vCliente.ID := FDMemTableID_CLIENTE.AsInteger;
              vController.AlterarCliente(vCliente);
              MessageDlg('Cliente alterado com sucesso', mtInformation, [mbOK], 0);
            end;
        end;
      except
        on e: Exception do
          raise Exception.Create(e.Message);
      end;
    finally
      vController.Free;
    end;

  finally
    vValidacao.Free;
    vCliente.Free;
  end;

  inherited;

end;

end.













