unit uFrmPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  uFrmBaseCadastro, Data.DB, FireDAC.UI.Intf, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Comp.UI, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.WinXPickers, Vcl.ComCtrls, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.DApt, FireDAC.Stan.StorageBin;

type
  TfrmPedidos = class(TfrmBaseCadastro)
    Panel4: TPanel;
    Label9: TLabel;
    edtPedido: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    pnlNovoItem: TPanel;
    Panel6: TPanel;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    dtpDataPedido: TDatePicker;
    cbxCliente: TComboBox;
    lblObservacao: TLabel;
    memObservacao: TMemo;
    DataSource1: TDataSource;
    FDMemTable1: TFDMemTable;
    FDMemTable1ID_PRODUTO: TIntegerField;
    FDMemTable1CODIGO: TStringField;
    FDMemTable1NOME: TStringField;
    FDMemTable1DESCRICAO: TStringField;
    FDMemTable1QUANTIDADE: TIntegerField;
    procedure Label5Click(Sender: TObject);
    procedure lblMenuNovoClick(Sender: TObject);
    procedure lblMenuPesquisaClick(Sender: TObject);
    procedure lblMenuCancelarClick(Sender: TObject);
    procedure lblMenuSalvarClick(Sender: TObject);
    procedure edtPedidoKeyPress(Sender: TObject; var Key: Char);
    procedure edtPedidoExit(Sender: TObject);
    procedure cbxClienteChange(Sender: TObject);
    procedure cbxClienteSelect(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Label5MouseEnter(Sender: TObject);
    procedure Label5MouseLeave(Sender: TObject);
  private
    { Private declarations }
    procedure CarregarCliente(ACombobox: TComboBox);
  public
    { Public declarations }
  end;

var
  frmPedidos: TfrmPedidos;

implementation

uses
  uFrmItensPedido, uPedidoController, uClienteController, uCliente,
  uProdutoController, uProduto;

{$R *.dfm}

procedure TfrmPedidos.CarregarCliente(ACombobox: TComboBox);
var
  vClienteController: TClienteController;
  vCliente: TCliente;
  vMemTable: TFDMemTable;
  i: Integer;
begin
  inherited;

  vClienteController := TClienteController.Create;
  vCliente := TCliente.create;
  vMemTable := TFDMemTable.Create(nil);

  try
    vCliente.Nome := ACombobox.Text;

    ACombobox.Items.Clear;

    vMemTable.CloneCursor(vClienteController.ListarClientes(vCliente));
    if vMemTable.RecordCount = 1 then
    begin
      ACombobox.Items.Add(vMemTable.FieldByName('NOME').AsString);
     // ACombobox.Text := vMemTable.FieldByName('NOME').AsString;

    end
    else
    begin

      while not (vMemTable.Eof) do
      begin

        ACombobox.Items.Add(vMemTable.FieldByName('NOME').AsString);
        vMemTable.Next;
      end;
    end;

    for i := ACombobox.Items.Count - 1 downto 1 do
    begin
      if ACombobox.Items.IndexOf(ACombobox.Items[i]) < i then
        ACombobox.Items.Delete(i);
    end;

    ACombobox.Text := vCliente.Nome;
  finally
    vClienteController.Free;
    vCliente.Free;
    vMemTable.Free;
  end;
end;

procedure TfrmPedidos.cbxClienteChange(Sender: TObject);
begin
  CarregarCliente(cbxCliente);
  cbxCliente.SelStart := Length(cbxCliente.Text);
  cbxCliente.DroppedDown := True;
end;

procedure TfrmPedidos.cbxClienteSelect(Sender: TObject);
begin
  cbxCliente.DroppedDown := False;
 // CarregarCliente(cbxCliente);
end;

procedure TfrmPedidos.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Grid: TDBGrid;
  Texto: string;
  BotaoRect: TRect;
begin
  inherited;

  Grid := Sender as TDBGrid;

  // Verifica se a linha NÃO está selecionada para aplicar o efeito zebrado
  if not (gdSelected in State) then
  begin
    if (Grid.DataSource.DataSet.RecNo mod 2 = 0) then
      Grid.Canvas.Brush.Color := clCream // Cinza claro
    else
      Grid.Canvas.Brush.Color := clWhite; // Branco

    Grid.Canvas.FillRect(Rect);
  end;

  // Redesenha o texto da célula
  Grid.DefaultDrawColumnCell(Rect, DataCol, Column, State);

   if Column.Index = Grid.Columns.Count - 1 then
    Texto := '?' // Texto do botão de exclusão
  else
    Exit;

  // Desenha o botão na célula
  BotaoRect := Rect;
  InflateRect(BotaoRect, -3, -3); // Ajusta tamanho do botão
  Grid.Canvas.FillRect(Rect);
  Grid.Canvas.TextRect(BotaoRect, Texto, [tfCenter, tfVerticalCenter]);
end;

procedure TfrmPedidos.edtPedidoExit(Sender: TObject);
begin
  inherited;
  if Trim(edtPedido.Text) = '' then
    edtPedido.Text := '0';
end;

procedure TfrmPedidos.edtPedidoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not CharInSet(Key, ['0'..'9', #8]) then
    Key := #0;
end;

procedure TfrmPedidos.Label5Click(Sender: TObject);
var
  frmItensPedido: TFrmItensPedido;
begin
  frmItensPedido := TFrmItensPedido.Create(Self);

  try
    frmItensPedido.ShowModal;
    if frmItensPedido.ItemPedido.ID_Produto > 0 then
    begin
      FDMemTable1.Append;
      FDMemTable1.FieldByName('ID_PRODUTO').AsInteger :=  frmItensPedido.ItemPedido.ID_Produto;
      FDMemTable1.FieldByName('CODIGO').AsString :=  frmItensPedido.ItemPedido.Codigo;
      FDMemTable1.FieldByName('NOME').AsString :=  frmItensPedido.ItemPedido.Nome;
      FDMemTable1.FieldByName('DESCRICAO').AsString :=  frmItensPedido.ItemPedido.Descricao;
      FDMemTable1.FieldByName('QUANTIDADE').AsInteger :=  frmItensPedido.ItemPedido.Quantidade;
      FDMemTable1.Post;

    end;
  finally

    frmItensPedido.Free;
  end;
end;

procedure TfrmPedidos.Label5MouseEnter(Sender: TObject);
begin
  inherited;
  if Label5.Enabled then
    Label5.Color := clSilver;
end;

procedure TfrmPedidos.Label5MouseLeave(Sender: TObject);
begin
  inherited;
  Label5.Color := clWhite;
end;

procedure TfrmPedidos.lblMenuCancelarClick(Sender: TObject);
begin
  inherited;
  edtPedido.Enabled := True;
  Label9.Enabled := True;
end;

procedure TfrmPedidos.lblMenuNovoClick(Sender: TObject);
var
  vPedidoController: TPedidoController;
begin
  inherited;
  vPedidoController := TPedidoController.Create;
  try
    edtPedido.Text := IntToStr(vPedidoController.gerarNumeracaoPedido);
    edtPedido.Enabled := False;
    Label9.Enabled := False;
  finally
    vPedidoController.Free;
  end;

  dtpDataPedido.Date := Now;

  pnlNovoItem.Visible := True;
  Panel5.Visible := False;

end;

procedure TfrmPedidos.lblMenuPesquisaClick(Sender: TObject);
begin
  inherited;
  edtPedido.Enabled := True;
  Label9.Enabled := True;

  edtPedido.Text := '0';
  dtpDataPedido.Date := Now;

  pnlNovoItem.Visible := False;
  Panel5.Visible := True;
end;

procedure TfrmPedidos.lblMenuSalvarClick(Sender: TObject);
begin
  inherited;
  edtPedido.Enabled := True;
  Label9.Enabled := True;
end;

end.

