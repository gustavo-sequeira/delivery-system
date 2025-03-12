unit uFrmEntregadores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  uFrmBaseCadastro, Data.DB, FireDAC.UI.Intf, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, System.ImageList,
  Vcl.ImgList, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Comp.UI,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.Imaging.pngimage, FireDAC.Stan.StorageBin, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.DApt, System.UITypes;

type
  TfrmEntregadores = class(TfrmBaseCadastro)
    Label4: TLabel;
    Label8: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    edtNome: TEdit;
    edtTelefone: TEdit;
    edtVeiculo: TEdit;
    edtPlaca: TEdit;
    FDMemTableID_ENTREGADOR: TIntegerField;
    FDMemTableNOME: TStringField;
    FDMemTableTELEFONE: TStringField;
    FDMemTableVEICULO: TStringField;
    FDMemTablePLACA: TStringField;
    FDMemTableDATA_CADASTRO: TSQLTimeStampField;
    procedure lblMenuSalvarClick(Sender: TObject);
    procedure DBGridCellClick(Column: TColumn);
    procedure Label16Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEntregadores: TfrmEntregadores;

implementation

uses
  uEntregadorController, uEntregador;

{$R *.dfm}

procedure TfrmEntregadores.DBGridCellClick(Column: TColumn);
var
  vController: TEntregadorController;
begin
  inherited;
  vController := TEntregadorController.Create;

  try

    if Column.Index = DBGrid.Columns.Count - 2 then
    begin

      lblMenuNovo.onClick(Self);

      FTransactionState := tsEdit;

      edtNome.Text := FDMemTableNOME.AsString;
      edtTelefone.Text := FDMemTableTELEFONE.AsString;
      edtVeiculo.Text := FDMemTableVEICULO.AsString;
      edtPlaca.Text := FDMemTablePLACA.AsString;

    end
    else if Column.Index = DBGrid.Columns.Count - 1 then
    begin
      if MessageDlg('Deseja realmente excluir o registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        vController.ExcluirEntregador(FDMemTableID_ENTREGADOR.AsInteger);
        FDMemTable.Delete;
      end;
    end;
  finally
    vController.Free;
  end;
end;

procedure TfrmEntregadores.Label16Click(Sender: TObject);
var
  vController: TEntregadorController;
  vEntregador: TEntregador;
begin
  vController := TEntregadorController.Create;
  vEntregador := TEntregador.create;
  try
    if trim(edtNome.Text) <> '' then
      vEntregador.Nome := edtNome.Text;

    if trim(edtTelefone.Text) <> '' then
      vEntregador.Telefone := edtTelefone.Text;

    if trim(edtVeiculo.Text) <> '' then
      vEntregador.Veiculo := edtVeiculo.Text;

    if trim(edtPlaca.Text) <> '' then
      vEntregador.Placa := edtPlaca.Text;

    FDMemTable.CloneCursor(vController.ListarEntregador(vEntregador));

    inherited;
  finally
    vController.Free;
    vEntregador.Free;
  end;
end;

procedure TfrmEntregadores.lblMenuSalvarClick(Sender: TObject);
var
  vController: TEntregadorController;
  vValidacao: TStringList;
  vEntregador: TEntregador;
begin
  vValidacao := TStringList.Create;
  if Trim(edtNome.Text) = '' then
    vValidacao.Add('- Nome é um campo obrigatório');

  if Trim(edtTelefone.Text) = '' then
    vValidacao.Add('- Telefone é um campo obrigatório');

  if Trim(edtVeiculo.Text) = '' then
    vValidacao.Add('- Veiculo é um campo obrigatório');

  if Trim(edtPlaca.Text) = '' then
    vValidacao.Add('- Placa é um campo obrigatório');

  if vValidacao.Count > 0 then
  begin
    MessageDlg(vValidacao.Text, mtError, [mbOK], 0);
    Abort;
  end;

  vEntregador := TEntregador.create;

  try
    vEntregador.Nome := edtNome.Text;
    vEntregador.Telefone := edtTelefone.Text;
    vEntregador.Veiculo := edtVeiculo.Text;
    vEntregador.Placa := edtPlaca.Text;

    vController := TEntregadorController.Create;
    try
      try
        case FTransactionState of
          tsInsert:
            begin
              vController.InserirEntregador(vEntregador);
              MessageDlg('Entregador incluído com sucesso', mtInformation, [mbOK], 0);
            end;
          tsEdit:
            begin
              vEntregador.ID_Entregador := FDMemTableID_ENTREGADOR.AsInteger;
              vController.AlterarEntregador(vEntregador);
              MessageDlg('Entregador alterado com sucesso', mtInformation, [mbOK], 0);
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
    vEntregador.Free;
  end;

  inherited;
end;

end.

