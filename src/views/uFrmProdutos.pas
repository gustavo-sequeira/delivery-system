unit uFrmProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmBaseCadastro, Data.DB,
  FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Comp.UI,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.StdCtrls, FireDAC.Stan.StorageBin,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.DApt;

type
  TfrmProdutos = class(TfrmBaseCadastro)
    Label4: TLabel;
    edtNome: TEdit;
    Label3: TLabel;
    Edit1: TEdit;
    Label5: TLabel;
    Edit2: TEdit;
    Label6: TLabel;
    Edit3: TEdit;
    Label7: TLabel;
    Edit4: TEdit;
    Label8: TLabel;
    Edit5: TEdit;
    Label9: TLabel;
    Edit6: TEdit;
    Label10: TLabel;
    Edit7: TEdit;
    Label11: TLabel;
    Edit8: TEdit;
    FDMemTableID_PRODUTO: TIntegerField;
    FDMemTableNOME: TStringField;
    FDMemTableDESCRICAO: TStringField;
    FDMemTablePRECO: TFMTBCDField;
    FDMemTableESTOQUE: TIntegerField;
    FDMemTableCATEGORIA: TStringField;
    FDMemTableDATA_CADASTRO: TSQLTimeStampField;
    FDMemTableCODIGO: TStringField;
    FDMemTableDATA_VALIDADE: TSQLTimeStampField;
    FDMemTableSUBCATEGORIA: TStringField;
    FDMemTableOBSERVACAO: TStringField;
    procedure lblMenuSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProdutos: TfrmProdutos;

implementation

uses
  uProduto, System.UITypes, uProdutoController;

{$R *.dfm}

procedure TfrmProdutos.lblMenuSalvarClick(Sender: TObject);
var
  vController: TProdutoController;
  vValidacao: TStringList;
  vProduto: TProduto;
begin
  vValidacao := TStringList.Create;
  vProduto := TProduto.create;

  try
  {  if Trim(edtNome.Text) = '' then
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
                      }
    if vValidacao.Count > 0 then
    begin
      MessageDlg(vValidacao.Text, mtError, [mbOK], 0);
      Abort;
    end;

    vProduto.Nome := edtNome.Text;


    vController := TProdutoController.Create;
    try
      try
        case FTransactionState of
          tsInsert:
            begin
              vController.InserirProduto(vProduto);
              MessageDlg('Produto incluído com sucesso', mtInformation, [mbOK], 0);
            end;
          tsEdit:
            begin
              vProduto.ID := FDMemTableID_PRODUTO.AsInteger;
              vController.AlterarProduto(vProduto);
              MessageDlg('Produto alterado com sucesso', mtInformation, [mbOK], 0);
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
    vProduto.Free;
  end;

  inherited;

end;

end.
