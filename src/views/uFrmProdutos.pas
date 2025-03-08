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
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.DApt, FireDAC.Phys.IBBase;

type
  TfrmProdutos = class(TfrmBaseCadastro)
    Label4: TLabel;
    edtNome: TEdit;
    Label3: TLabel;
    edtDescricao: TEdit;
    Label5: TLabel;
    edtPreco: TEdit;
    Label6: TLabel;
    edtEstoque: TEdit;
    Label7: TLabel;
    edtCategoria: TEdit;
    Label8: TLabel;
    edtSubCategoria: TEdit;
    Label9: TLabel;
    edtCodigo: TEdit;
    Label10: TLabel;
    edtDataValidade: TEdit;
    Label11: TLabel;
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
    memObservacao: TMemo;
    procedure lblMenuSalvarClick(Sender: TObject);
    procedure DBGridCellClick(Column: TColumn);
    procedure Label16Click(Sender: TObject);
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

procedure TfrmProdutos.DBGridCellClick(Column: TColumn);
var
  vController: TProdutoController;
begin
  inherited;
  vController := TProdutoController.Create;

  try

    if Column.Index = DBGrid.Columns.Count - 2 then
    begin

      lblMenuNovo.onClick(Self);

      FTransactionState := tsEdit;

      edtCodigo.Text := FDMemTableCODIGO.AsString;
      edtNome.Text := FDMemTableNOME.AsString;
      edtDescricao.Text := FDMemTableDESCRICAO.AsString;
      edtPreco.Text := FloatToStr(FDMemTablePRECO.AsFloat);
      edtEstoque.Text := IntToStr(FDMemTableESTOQUE.AsInteger);
      edtCategoria.Text := FDMemTableCATEGORIA.AsString;
      edtSubCategoria.Text := FDMemTableSUBCATEGORIA.AsString;
      edtDataValidade.Text := DateToStr(FDMemTableDATA_VALIDADE.AsDateTime);
      memObservacao.Text := FDMemTableOBSERVACAO.AsString;

    end
    else if Column.Index = DBGrid.Columns.Count - 1 then
    begin
      if MessageDlg('Deseja realmente excluir o registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        vController.ExcluirProduto(FDMemTableID_PRODUTO.AsInteger);
        FDMemTable.Delete;
      end;
    end;
  finally
    vController.Free;
  end;
end;

procedure TfrmProdutos.Label16Click(Sender: TObject);
var
  vController: TProdutoController;
  vProduto: TProduto;
begin
  vController := TProdutoController.Create;
  vProduto := TProduto.create;
  try
    vProduto.Codigo := edtCodigo.Text;
    vProduto.Nome := edtNome.Text;
    vProduto.Descricao := edtDescricao.Text;

    if trim(edtPreco.Text) <> '' then
      vProduto.Preco := StrToFloat(edtPreco.Text);

    if trim(edtEstoque.Text)  <> '' then
      vProduto.Estoque := StrToInt(edtEstoque.Text);

    vProduto.Categoria := edtCategoria.Text;
    vProduto.SubCategoria := edtSubCategoria.Text;

    if trim(edtDataValidade.Text) <> '' then
      vProduto.DataValidade := StrToDate(edtDataValidade.Text);

    vProduto.Observacao := memObservacao.Text;

    FDMemTable.CloneCursor(vController.ListarProdutos(vProduto),true, true);

    inherited;
  finally
    vController.Free;
    vProduto.Free;
  end;
end;

procedure TfrmProdutos.lblMenuSalvarClick(Sender: TObject);
var
  vController: TProdutoController;
  vValidacao: TStringList;
  vProduto: TProduto;
begin
  vValidacao := TStringList.Create;
  vProduto := TProduto.create;

  try

    if Trim(edtNome.Text) = '' then
      vValidacao.Add('- Nome é um campo obrigatório');

    if Trim(edtPreco.Text) = '' then
      vValidacao.Add('- Preço é um campo obrigatório');

    if Trim(edtEstoque.Text) = '' then
      vValidacao.Add('- Estoque é um campo obrigatório');

    if Trim(edtCategoria.Text) = '' then
      vValidacao.Add('- Categoria é um campo obrigatório');

    if Trim(edtSubCategoria.Text) = '' then
      vValidacao.Add('- Subcategoria é um campo obrigatório');

    if Trim(edtDataValidade.Text) = '' then
      vValidacao.Add('- Data de validade é um campo obrigatório');

    if vValidacao.Count > 0 then
    begin
      MessageDlg(vValidacao.Text, mtError, [mbOK], 0);
      Abort;
    end;


    vProduto.Codigo := edtCodigo.Text;
    vProduto.Nome := edtNome.Text;
    if Trim(edtDescricao.Text) <> '' then
      vProduto.Descricao := edtDescricao.Text
    else
      vProduto.Descricao := edtNome.Text;
    vProduto.Preco := StrToFloat(edtPreco.Text);
    vProduto.Estoque := StrToInt(edtEstoque.Text);
    vProduto.Categoria := edtCategoria.Text;
    vProduto.SubCategoria := edtSubCategoria.Text;
    vProduto.DataValidade := StrToDate(edtDataValidade.Text);
    vProduto.Observacao := memObservacao.Text;

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
