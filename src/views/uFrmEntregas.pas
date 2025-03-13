unit uFrmEntregas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  uFrmBaseCadastro, Data.DB, FireDAC.UI.Intf, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, System.ImageList,
  Vcl.ImgList, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Comp.UI,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.StdCtrls, FireDAC.Stan.StorageBin,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.DApt, Vcl.Imaging.jpeg,
  Vcl.Imaging.pngimage, System.UITypes;

type
  TfrmEntregas = class(TfrmBaseCadastro)
    DBGrid1: TDBGrid;
    Label4: TLabel;
    Panel4: TPanel;
    Panel6: TPanel;
    dsPedidos: TDataSource;
    memPedidos: TFDMemTable;
    Label6: TLabel;
    DBGrid2: TDBGrid;
    Panel7: TPanel;
    cbxEntregador: TComboBox;
    Label5: TLabel;
    lblMenuPedidos: TLabel;
    Panel8: TPanel;
    Shape7: TShape;
    dsItens: TDataSource;
    memItens: TFDMemTable;
    memItensID_PEDIDO: TIntegerField;
    memItensQUANTIDADE: TIntegerField;
    memItensID_PRODUTO: TIntegerField;
    memItensCODIGO: TStringField;
    memItensNOME: TStringField;
    memItensDESCRICAO: TStringField;
    memItensCATEGORIA: TStringField;
    memItensSUBCATEGORIA: TStringField;
    memItensPRECO: TFMTBCDField;
    Label3: TLabel;
    lblEndereco5: TLabel;
    lblEndereco4: TLabel;
    lblEndereco3: TLabel;
    lblEndereco2: TLabel;
    lblEndereco1: TLabel;
    Label12: TLabel;
    memPedidosLEVEL: TIntegerField;
    memPedidosID_PEDIDO: TIntegerField;
    memPedidosSTATUS: TStringField;
    memPedidosDATA_ENTREGA: TSQLTimeStampField;
    memPedidosNOME: TStringField;
    memPedidosENDERECO: TStringField;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    FDMemTableLEVEL: TIntegerField;
    FDMemTableID_PEDIDO: TIntegerField;
    FDMemTableSTATUS: TStringField;
    FDMemTableENTREGADOR: TStringField;
    FDMemTableCLIENTE: TStringField;
    FDMemTableENDERECO: TStringField;
    procedure memPedidosAfterScroll(DataSet: TDataSet);
    procedure lblMenuNovoClick(Sender: TObject);
    procedure lblMenuPedidosMouseEnter(Sender: TObject);
    procedure lblMenuPedidosMouseLeave(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure lblMenuPedidosClick(Sender: TObject);
    procedure lblMenuPesquisaClick(Sender: TObject);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridCellClick(Column: TColumn);
  private
    procedure CarregarEntregadores;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEntregas: TfrmEntregas;

implementation

uses
  uItemPedidoController, uPedido, uEntregaController, uEntregadorController,
  uEntregador, uPedidoController, uFrmFinalizacaoPedido;

{$R *.dfm}

procedure TfrmEntregas.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Grid: TDBGrid;
begin
  inherited;

  Grid := Sender as TDBGrid;

  if not (gdSelected in State) then
  begin
    if (Grid.DataSource.DataSet.RecNo mod 2 = 0) then
      Grid.Canvas.Brush.Color := clCream
    else
      Grid.Canvas.Brush.Color := clWhite;

    Grid.Canvas.FillRect(Rect);
  end;

  if Grid.DataSource.DataSet.FieldByName('LEVEL').AsInteger = 1 then
    Grid.Canvas.Font.Color := clRed
  else if Grid.DataSource.DataSet.FieldByName('LEVEL').AsInteger = 2 then
    Grid.Canvas.Font.Color := clPurple
  else if Grid.DataSource.DataSet.FieldByName('LEVEL').AsInteger = 3 then
    Grid.Canvas.Font.Color := clBlue
  else
    Grid.Canvas.Font.Color := clWindowText;

  if gdSelected in State then
    Font.Color := clHighlightText;

  Grid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfrmEntregas.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Grid: TDBGrid;
begin
  inherited;

  Grid := Sender as TDBGrid;

  if not (gdSelected in State) then
  begin
    if (Grid.DataSource.DataSet.RecNo mod 2 = 0) then
      Grid.Canvas.Brush.Color := clCream
    else
      Grid.Canvas.Brush.Color := clWhite;

    Grid.Canvas.FillRect(Rect);
  end;

  if Grid.DataSource.DataSet.FieldByName('SUBCATEGORIA').AsString = 'SENSIVEIS' then
    Grid.Canvas.Font.Color := clRed
  else if Grid.DataSource.DataSet.FieldByName('SUBCATEGORIA').AsString = 'CONTROLADOS' then
    Grid.Canvas.Font.Color := clPurple
  else if Grid.DataSource.DataSet.FieldByName('SUBCATEGORIA').AsString = 'PERECIVEIS' then
    Grid.Canvas.Font.Color := clBlue
  else
    Grid.Canvas.Font.Color := clWindowText;

  if gdSelected in State then
    Font.Color := clHighlightText;


  Grid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfrmEntregas.DBGridCellClick(Column: TColumn);
var
  frmFinalizacaoPedido: TfrmFinalizacaoPedido;
  vPedidoController: TPedidoController;
  vPedido: TPedido;

  vEntregadorController : TEntregadorController;
  vEntregador :  TEntregador;
begin
  inherited;
  if Column.Index = DBGrid.Columns.Count - 1 then
  begin
    frmFinalizacaoPedido := TfrmFinalizacaoPedido.Create(Self);

    try
      if frmFinalizacaoPedido.ShowModal = mrOk then
      begin
        vPedidoController := TPedidoController.Create;
        vPedido := TPedido.Create;

        vEntregadorController := TEntregadorController.Create;
        vEntregador := TEntregador.Create;

        vEntregador.Nome := FDMemTableENTREGADOR.AsString;

        try
          vPedido.IDPedido := FDMemTableID_PEDIDO.AsInteger;
          vPedido.Status := 'ENTREGUE';
          vPedido.IDEntregador := TFDQuery(vEntregadorController.ListarEntregador(vEntregador)).FieldByName('ID_ENTREGADOR').AsInteger;
          vPedido.Observacao := frmFinalizacaoPedido.Memo1.Text;
          vPedidoController.AlterarPedido(vPedido);

          MessageDlg('Pedido finalizado com sucesso', mtInformation, [mbOk], 0);
          lblMenuPesquisaClick(Self);

        finally
          vEntregadorController.Free;
          vEntregador.Free;
          vPedidoController.Free;
          vPedido.Free;
        end;
      end;
    finally
      frmFinalizacaoPedido.Free;
    end;
  end;
end;

procedure TfrmEntregas.DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Grid: TDBGrid;
  ImgIndex: Integer;
  ImgX, ImgY: Integer;
begin
  Grid := Sender as TDBGrid;

  if not (gdSelected in State) then
  begin
    if (Grid.DataSource.DataSet.RecNo mod 2 = 0) then
      Grid.Canvas.Brush.Color := clCream
    else
      Grid.Canvas.Brush.Color := clWhite;

    Grid.Canvas.FillRect(Rect);
  end;

   if Grid.DataSource.DataSet.FieldByName('LEVEL').AsInteger = 1 then
    Grid.Canvas.Font.Color := clRed
  else if Grid.DataSource.DataSet.FieldByName('LEVEL').AsInteger = 2 then
    Grid.Canvas.Font.Color := clPurple
  else if Grid.DataSource.DataSet.FieldByName('LEVEL').AsInteger = 3 then
    Grid.Canvas.Font.Color := clBlue
  else
    Grid.Canvas.Font.Color := clWindowText;


  Grid.DefaultDrawColumnCell(Rect, DataCol, Column, State);

  if Column.Index = Grid.Columns.Count - 1 then
    ImgIndex := 2
  else
    ImgIndex := -1;

  if ImgIndex >= 0 then
  begin

    ImgX := Rect.Left + (Rect.Width - ImageList1.Width) div 2;
    ImgY := Rect.Top + (Rect.Height - ImageList1.Height) div 2;

    ImageList1.Draw(DBGrid.Canvas, ImgX, ImgY, ImgIndex);
  end;
end;

procedure TfrmEntregas.lblMenuNovoClick(Sender: TObject);
var
  vController: TEntregaController;
begin
 // inherited;

  pnlManutencao.Visible := true;
  pnlPesquisa.Visible := false;

  lblEndereco1.Caption := '1.';
  lblEndereco2.Caption := '2.';
  lblEndereco3.Caption := '3.';
  lblEndereco4.Caption := '4.';
  lblEndereco5.Caption := '5.';

  vController := TEntregaController.Create;
  try
    memPedidos.CloneCursor(vController.ListarPedidos, True);
    if memPedidos.IsEmpty then
      memItens.Close;
    CarregarEntregadores;
  finally
    vController.Free;
  end;

end;

procedure TfrmEntregas.lblMenuPedidosClick(Sender: TObject);
var
  vPedidoController: TPedidoController;
  vEntregadorController: TEntregadorController;
  vEntregaController: TEntregaController;
  vPedido: TPedido;
  vEntregador: TEntregador;
  I: Integer;
  vMemTable: TFDMemTable;
  vValidacao: TStringList;
begin
  inherited;
  vValidacao := TStringList.Create;
  try
    if cbxEntregador.Text = '' then
      vValidacao.Add('- É preciso escolher um entregador');

    if DBGrid1.SelectedRows.Count = 0 then
      vValidacao.Add('- É preciso escolher pelo menos um pedido');

    if DBGrid1.SelectedRows.Count > 5 then
      vValidacao.Add('- O limite de pedidos por entregador, são de 5 pedidos');

    if vValidacao.Count > 0 then
    begin
      MessageDlg(vValidacao.Text, mtError, [mbOK], 0);
      Abort;
    end;
  finally
    vValidacao.Free;
  end;

  vPedidoController := TPedidoController.Create;
  vEntregadorController := TEntregadorController.Create;
  vEntregador := TEntregador.Create;
  vEntregaController := TEntregaController.Create;
  vMemTable := TFDMemTable.Create(nil);

  try
    vEntregador.Nome := cbxEntregador.Text;
    vEntregador.ID_Entregador := TFDQuery(vEntregadorController.ListarEntregador(vEntregador)).FieldByName('ID_ENTREGADOR').AsInteger;

    DBGrid1.DataSource.DataSet.DisableControls;
    try
      for I := 0 to DBGrid1.SelectedRows.Count - 1 do
      begin
        DBGrid1.DataSource.DataSet.GotoBookmark(DBGrid1.SelectedRows.Items[I]);
        vPedido := TPedido.Create;
        try
          vPedido.IDPedido := memItensID_PEDIDO.AsInteger;
          vPedido.Status := 'EM ROTA';
          vPedido.IDEntregador := vEntregador.ID_Entregador;
          vPedidoController.AlterarPedido(vPedido);
        finally
          vPedido.Free;
        end;
      end;
    finally
      lblMenuNovoClick(Self);
      DBGrid1.DataSource.DataSet.EnableControls
    end;

    vMemTable.CloneCursor(vEntregaController.ListarEnderecos(vEntregador.ID_Entregador));

    lblEndereco1.Caption := '1.';
    lblEndereco2.Caption := '2.';
    lblEndereco3.Caption := '3.';
    lblEndereco4.Caption := '4.';
    lblEndereco5.Caption := '5.';

    if vMemTable.RecordCount > 0 then
    begin
      vMemTable.First;
      while not (vMemTable.Eof) do
      begin

        if vMemTable.RecNo = 1 then
          lblEndereco1.Caption := '1. ' + vMemTable.FieldByName('ENDERECO').AsString
        else if vMemTable.RecNo = 2 then
          lblEndereco2.Caption := '2. ' + vMemTable.FieldByName('ENDERECO').AsString
        else if vMemTable.RecNo = 3 then
          lblEndereco3.Caption := '3. ' + vMemTable.FieldByName('ENDERECO').AsString
        else if vMemTable.RecNo = 4 then
          lblEndereco4.Caption := '4. ' + vMemTable.FieldByName('ENDERECO').AsString
        else if vMemTable.RecNo = 5 then
          lblEndereco5.Caption := '5. ' + vMemTable.FieldByName('ENDERECO').AsString;

        vMemTable.Next;
      end;

    end;

  finally
    vMemTable.Free;
    vEntregador.Free;
    vPedidoController.Free;
    vEntregadorController.Free;
    vEntregaController.Free;
  end;
end;

procedure TfrmEntregas.lblMenuPedidosMouseEnter(Sender: TObject);
begin
  inherited;
  if lblMenuPedidos.Enabled then
    lblMenuPedidos.Color := clSilver;
end;

procedure TfrmEntregas.lblMenuPedidosMouseLeave(Sender: TObject);
begin
  inherited;
  lblMenuPedidos.Color := clWhite;
end;

procedure TfrmEntregas.lblMenuPesquisaClick(Sender: TObject);
var
  vEntregaController: TEntregaController;
begin
//  inherited;
  pnlPesquisa.Visible := True;
  pnlManutencao.Visible := False;

  vEntregaController := TEntregaController.Create;
  try
    FDMemTable.CloneCursor(vEntregaController.ListarPedidosEmRota);
  finally
    vEntregaController.Free;
  end;
end;

procedure TfrmEntregas.memPedidosAfterScroll(DataSet: TDataSet);
var
  vController: TItemPedidoController;
  vPedido: TPedido;
begin
  inherited;
  if not (memPedidos.IsEmpty) then
  begin
    vController := TItemPedidoController.Create;
    vPedido := TPedido.Create;
    try
      vPedido.IDPedido := memPedidosID_PEDIDO.AsInteger;
      if not (memItens.Active) then
        memItens.Open;
      memItens.CloneCursor(vController.ListarItensPedido(vPedido));
    finally
      vPedido.Free;
      vController.Free;
    end;
  end
  else
  begin
    memItens.Close;
  end;

end;

procedure TfrmEntregas.CarregarEntregadores;
var
  vEntregadorController: TEntregadorController;
  vEntregador: TEntregador;
  vMemTable: TFDMemTable;
  i: Integer;
begin
  inherited;

  vEntregadorController := TEntregadorController.Create;
  vEntregador := TEntregador.create;
  vMemTable := TFDMemTable.Create(nil);

  try
    vEntregador.Nome := cbxEntregador.Text;

    cbxEntregador.Items.Clear;

    vMemTable.CloneCursor(vEntregadorController.ListarEntregadorDisponivel);
    if vMemTable.RecordCount = 1 then
    begin
      cbxEntregador.Items.Add(vMemTable.FieldByName('NOME').AsString);
    end
    else
    begin

      while not (vMemTable.Eof) do
      begin

        cbxEntregador.Items.Add(vMemTable.FieldByName('NOME').AsString);
        vMemTable.Next;
      end;
    end;

    for i := cbxEntregador.Items.Count - 1 downto 1 do
    begin
      if cbxEntregador.Items.IndexOf(cbxEntregador.Items[i]) < i then
        cbxEntregador.Items.Delete(i);
    end;

    cbxEntregador.Text := vEntregador.Nome;
  finally
    vEntregadorController.Free;
    vEntregador.Free;
    vMemTable.Free;
  end;
end;

end.

