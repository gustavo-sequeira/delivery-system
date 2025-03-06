unit uFrmItensPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, uItemPedido;

type
  TfrmItensPedido = class(TForm)
    Label9: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    edtCategoria: TEdit;
    Label3: TLabel;
    edtSubCategoria: TEdit;
    Label4: TLabel;
    edtQuantidade: TEdit;
    Label5: TLabel;
    Label16: TLabel;
    cbxCodigo: TComboBox;
    cbxNome: TComboBox;
    cbxDescricao: TComboBox;
    procedure Label16Click(Sender: TObject);
    procedure cbxCodigoChange(Sender: TObject);
    procedure cbxNomeChange(Sender: TObject);
    procedure cbxDescricaoChange(Sender: TObject);
  private
    { Private declarations }
    procedure CarregarProduto(AComboBox: TComboBox);
  public
    { Public declarations }
    ItemPedido: TItemPedido;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

var
  frmItensPedido: TfrmItensPedido;

implementation

uses
  uProdutoController, uProduto, FireDAC.Comp.Client;

{$R *.dfm}

{ TfrmItensPedido }

procedure TfrmItensPedido.CarregarProduto(AComboBox: TComboBox);
var
  vProdutoController: TProdutoController;
  vProduto: TProduto;
  vMemTable: TFDMemTable;
begin
  vProdutoController := TProdutoController.Create;
  vProduto := TProduto.Create;
  vMemTable := TFDMemTable.Create(nil);

  try
    if AComboBox.Name = 'cbxCodigo' then
    begin
      vProduto.Codigo := AComboBox.Text;
    end
    else if AComboBox.Name = 'cbxNome' then
    begin
      vProduto.Nome := AComboBox.Text;
    end
    else
    begin
      vProduto.Descricao := AComboBox.Text;
    end;

    cbxCodigo.Items.Clear;
    cbxNome.Items.Clear;
    cbxDescricao.Items.Clear;

    vMemTable.CloneCursor(vProdutoController.ListarProdutos(vProduto));

    if AComboBox.Name = 'cbxCodigo' then
    begin
      AComboBox.Text := vProduto.Codigo;
      cbxNome.Text := '';
      cbxDescricao.Text := '';
    end
    else if AComboBox.Name = 'cbxNome' then
    begin
      AComboBox.Text := vProduto.Nome;
      cbxCodigo.Text := '';
      cbxDescricao.Text := '';
    end
    else
    begin
      AComboBox.Text := vProduto.Descricao;
      cbxCodigo.Text := '';
      cbxNome.Text := '';
    end;

    if vMemTable.RecordCount = 1 then
    begin

      cbxCodigo.Items.Add(vMemTable.FieldByName('CODIGO').AsString);
      cbxNome.Items.Add(vMemTable.FieldByName('NOME').AsString);
      cbxDescricao.Items.Add(vMemTable.FieldByName('DESCRICAO').AsString);

      edtCategoria.Text := vMemTable.FieldByName('CATEGORIA').AsString;
      edtSubCategoria.Text := vMemTable.FieldByName('SUBCATEGORIA').AsString;

      ItemPedido.ID_Produto := vMemTable.FieldByName('ID_PRODUTO').AsInteger;
      ItemPedido.PrecoUnitario := vMemTable.FieldByName('PRECO').AsInteger;

        AComboBox.SelStart := Length(AComboBox.Text)+1;
        AComboBox.SelLength := 0;
    end
    else
    begin
      while not (vMemTable.Eof) do
      begin



        cbxCodigo.Items.Add(vMemTable.FieldByName('CODIGO').AsString);
        cbxNome.Items.Add(vMemTable.FieldByName('NOME').AsString);
        cbxDescricao.Items.Add(vMemTable.FieldByName('DESCRICAO').AsString);

        vMemTable.Next;
      end;

    end;

    AComboBox.SelStart := Length(AComboBox.Text) + 1;
    AComboBox.SelLength := 0;
    AComboBox.DroppedDown := True;

  finally
    vMemTable.Free;
    vProduto.Free;
    vProdutoController.Free;
  end;
end;

procedure TfrmItensPedido.cbxCodigoChange(Sender: TObject);
begin
  if Self.ActiveControl = cbxCodigo then
    CarregarProduto(cbxCodigo);
end;

procedure TfrmItensPedido.cbxDescricaoChange(Sender: TObject);
begin
  if Self.ActiveControl = cbxDescricao then
    CarregarProduto(cbxDescricao);
end;

procedure TfrmItensPedido.cbxNomeChange(Sender: TObject);
begin
  if Self.ActiveControl = cbxNome then
    CarregarProduto(cbxNome);
end;

constructor TfrmItensPedido.Create(AOwner: TComponent);
begin
  inherited;
  ItemPedido := TItemPedido.Create;
end;

destructor TfrmItensPedido.Destroy;
begin
  ItemPedido.Free;
  inherited;
end;

procedure TfrmItensPedido.Label16Click(Sender: TObject);
begin
  ItemPedido.Quantidade := StrToInt(edtQuantidade.Text);
  ItemPedido.Subtotal := ItemPedido.Quantidade * ItemPedido.PrecoUnitario;
  Close;
end;

end.

