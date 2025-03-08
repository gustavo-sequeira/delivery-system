unit uFrmItensPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, uItemPedido, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls;

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
    FDQuery1: TFDQuery;
    Panel1: TPanel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Label6: TLabel;
    Label7: TLabel;
    procedure Label16Click(Sender: TObject);
    procedure cbxCodigoChange(Sender: TObject);
    procedure cbxNomeChange(Sender: TObject);
    procedure cbxDescricaoChange(Sender: TObject);
    procedure cbxCodigoSelect(Sender: TObject);
    procedure cbxNomeSelect(Sender: TObject);
    procedure cbxDescricaoSelect(Sender: TObject);
    procedure edtQuantidadeKeyPress(Sender: TObject; var Key: Char);
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure Label6Click(Sender: TObject);
    procedure edtQuantidadeExit(Sender: TObject);
    procedure Label16MouseEnter(Sender: TObject);
    procedure Label16MouseLeave(Sender: TObject);
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
  uProdutoController, uProduto;

{$R *.dfm}

{ TfrmItensPedido }

procedure TfrmItensPedido.CarregarProduto(AComboBox: TComboBox);
var
  vProdutoController: TProdutoController;
  vProduto: TProduto;
  vMemTable: TFDMemTable;
  i: Integer;
begin
  vProdutoController := TProdutoController.Create;
  vProduto := TProduto.Create;
  vMemTable := TFDMemTable.Create(nil);

  try
    if AComboBox.Name = 'cbxCodigo' then
    begin
      vProduto.Codigo := AComboBox.Text;

      cbxNome.Items.Clear;
      cbxDescricao.Items.Clear;
    end
    else if AComboBox.Name = 'cbxNome' then
    begin
      vProduto.Nome := AComboBox.Text;
      cbxCodigo.Items.Clear;
      cbxDescricao.Items.Clear;
    end
    else
    begin
      vProduto.Descricao := AComboBox.Text;
      cbxCodigo.Items.Clear;
      cbxNome.Items.Clear;
    end;

    if AComboBox.Name = 'cbxCodigo' then
    begin
      AComboBox.Text := vProduto.Codigo;
    end
    else if AComboBox.Name = 'cbxNome' then
    begin
      AComboBox.Text := vProduto.Nome;
    end
    else
    begin
      AComboBox.Text := vProduto.Descricao;
    end;

    vMemTable.CloneCursor(vProdutoController.ListarProdutos(vProduto));

    if vMemTable.RecordCount = 1 then
    begin

      cbxCodigo.Items.Add(vMemTable.FieldByName('CODIGO').AsString);
      cbxNome.Items.Add(vMemTable.FieldByName('NOME').AsString);
      cbxDescricao.Items.Add(vMemTable.FieldByName('DESCRICAO').AsString);

      cbxCodigo.Text := vMemTable.FieldByName('CODIGO').AsString;
      cbxNome.Text := vMemTable.FieldByName('NOME').AsString;
      cbxDescricao.Text := vMemTable.FieldByName('DESCRICAO').AsString;

      edtCategoria.Text := vMemTable.FieldByName('CATEGORIA').AsString;
      edtSubCategoria.Text := vMemTable.FieldByName('SUBCATEGORIA').AsString;

      ItemPedido.ID_Produto := vMemTable.FieldByName('ID_PRODUTO').AsInteger;
      ItemPedido.PrecoUnitario := vMemTable.FieldByName('PRECO').AsInteger;

      Label7.Caption := vMemTable.FieldByName('OBSERVACAO').AsString;

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

    if AComboBox.Name = 'cbxCodigo' then
    begin
      AComboBox.Text := vProduto.Codigo;
      for i := cbxCodigo.Items.Count - 1 downto 1 do
      begin
        if cbxCodigo.Items.IndexOf(cbxCodigo.Items[i]) < i then
          cbxCodigo.Items.Delete(i);
      end;
    end
    else if AComboBox.Name = 'cbxNome' then
    begin
      AComboBox.Text := vProduto.Nome;
      for i := cbxNome.Items.Count - 1 downto 1 do
      begin
        if cbxNome.Items.IndexOf(cbxNome.Items[i]) < i then
          cbxNome.Items.Delete(i);
      end;
    end
    else
    begin
      AComboBox.Text := vProduto.Descricao;
      for i := cbxDescricao.Items.Count - 1 downto 1 do
      begin
        if cbxDescricao.Items.IndexOf(cbxDescricao.Items[i]) < i then
          cbxDescricao.Items.Delete(i);
      end;
    end;
  finally
    vMemTable.Free;
    vProduto.Free;
    vProdutoController.Free;
  end;
end;

procedure TfrmItensPedido.cbxCodigoChange(Sender: TObject);
begin
  if Self.ActiveControl = cbxCodigo then
  begin
    CarregarProduto(cbxCodigo);
    cbxCodigo.SelStart := Length(cbxCodigo.Text);
    cbxCodigo.DroppedDown := True;
  end;
end;

procedure TfrmItensPedido.cbxCodigoSelect(Sender: TObject);
begin
  cbxCodigo.DroppedDown := False;
  CarregarProduto(cbxCodigo);
end;

procedure TfrmItensPedido.cbxDescricaoChange(Sender: TObject);
begin
  if Self.ActiveControl = cbxDescricao then
  begin
    CarregarProduto(cbxDescricao);
    cbxDescricao.SelStart := Length(cbxDescricao.Text);
    cbxDescricao.DroppedDown := True;
  end;
end;

procedure TfrmItensPedido.cbxDescricaoSelect(Sender: TObject);
begin
  cbxDescricao.DroppedDown := False;
  CarregarProduto(cbxDescricao);
end;

procedure TfrmItensPedido.cbxNomeChange(Sender: TObject);
begin
  if Self.ActiveControl = cbxNome then
  begin
    CarregarProduto(cbxNome);
    cbxNome.SelStart := Length(cbxNome.Text);
    cbxNome.DroppedDown := True;
  end;
end;

procedure TfrmItensPedido.cbxNomeSelect(Sender: TObject);
begin
  cbxNome.DroppedDown := False;
  CarregarProduto(cbxNome);

end;

constructor TfrmItensPedido.Create(AOwner: TComponent);
begin
  inherited;
  ItemPedido := TItemPedido.Create;
  ItemPedido.ID_Produto := 0;
end;

destructor TfrmItensPedido.Destroy;
begin
  ItemPedido.Free;
  inherited;
end;

procedure TfrmItensPedido.edtQuantidadeExit(Sender: TObject);
begin
  if Trim(edtQuantidade.Text) = '' then
    edtQuantidade.Text := '0';
end;

procedure TfrmItensPedido.edtQuantidadeKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then
    Key := #0;
end;

procedure TfrmItensPedido.Label16Click(Sender: TObject);
var
  vValidacao: TStringList;
begin
  vValidacao := TStringList.Create;

  try
    if Trim(cbxCodigo.Text) = '' then
      vValidacao.Add('- É nescessário ter um produto');

    if StrToInt(edtQuantidade.Text) <= 0 then
      vValidacao.Add('- Quantidade é um campo obrigatório');

    if vValidacao.Count > 0 then
    begin
      MessageDlg(vValidacao.Text, mtError, [mbOK], 0);
      Abort;
    end;

  finally
    vValidacao.Free;
  end;

  ItemPedido.Quantidade := StrToInt(edtQuantidade.Text);
  ItemPedido.Subtotal := ItemPedido.Quantidade * ItemPedido.PrecoUnitario;
  Close;
end;

procedure TfrmItensPedido.Label16MouseEnter(Sender: TObject);
begin
  if Label16.Enabled then
    Label16.Color := clSilver;
end;

procedure TfrmItensPedido.Label16MouseLeave(Sender: TObject);
begin
  Label16.Color := clWhite;
end;

procedure TfrmItensPedido.Label6Click(Sender: TObject);
begin
  ItemPedido.ID_Produto := 0;
  Close;
end;

procedure TfrmItensPedido.Panel1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(Handle, WM_SYSCOMMAND, $F012, 0);
end;

end.

