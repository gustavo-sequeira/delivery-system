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
  FireDAC.Phys.FBDef, FireDAC.DApt, FireDAC.Stan.StorageBin, uPedido,
  System.UITypes, System.ImageList, Vcl.ImgList, Vcl.Imaging.jpeg,
  Vcl.Imaging.pngimage;

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
    DBGridItens: TDBGrid;
    FDMemTableID_PEDIDO: TIntegerField;
    FDMemTableID_CLIENTE: TIntegerField;
    FDMemTableDATA_PEDIDO: TSQLTimeStampField;
    FDMemTableTOTAL: TFMTBCDField;
    FDMemTableSTATUS: TStringField;
    FDMemTableID_ENTREGADOR: TIntegerField;
    FDMemTableDATA_ENTREGA: TSQLTimeStampField;
    FDMemTableNOME: TStringField;
    chbPesquisaData: TCheckBox;
    FDMemTable1ID_PEDIDO: TIntegerField;
    FDMemTable1QUANTIDADE: TIntegerField;
    FDMemTable1ID_PRODUTO: TIntegerField;
    FDMemTable1CODIGO: TStringField;
    FDMemTable1NOME: TStringField;
    FDMemTable1DESCRICAO: TStringField;
    FDMemTable1CATEGORIA: TStringField;
    FDMemTable1SUBCATEGORIA: TStringField;
    FDMemTable1PRECO: TFMTBCDField;
    procedure Label5Click(Sender: TObject);
    procedure lblMenuNovoClick(Sender: TObject);
    procedure lblMenuPesquisaClick(Sender: TObject);
    procedure lblMenuCancelarClick(Sender: TObject);
    procedure lblMenuSalvarClick(Sender: TObject);
    procedure edtPedidoKeyPress(Sender: TObject; var Key: Char);
    procedure edtPedidoExit(Sender: TObject);
    procedure cbxClienteChange(Sender: TObject);
    procedure cbxClienteSelect(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Label5MouseEnter(Sender: TObject);
    procedure Label5MouseLeave(Sender: TObject);
    procedure cbxClienteExit(Sender: TObject);
    procedure Label16Click(Sender: TObject);
    procedure chbPesquisaDataClick(Sender: TObject);
    procedure FDMemTableAfterScroll(DataSet: TDataSet);
    procedure DBGridCellClick(Column: TColumn);
    procedure DBGridItensDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    FPedido: TPedido;
    procedure CarregarCliente(ACombobox: TComboBox);
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

var
  frmPedidos: TfrmPedidos;

implementation

uses
  uFrmItensPedido, uPedidoController, uClienteController, uCliente,
  uProdutoController, uProduto, uItemPedidoController, uItemPedido;

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

procedure TfrmPedidos.cbxClienteExit(Sender: TObject);
var
  vClienteController: TClienteController;
  vCliente: TCliente;
begin
  inherited;

  if Trim(cbxCliente.Text) = '' then
    Exit;

  vClienteController := TClienteController.Create;
  vCliente := TCliente.create;

  try
    vCliente.Nome := cbxCliente.Text;
    FPedido.IDCliente := TFDQuery(vClienteController.ListarClientes(vCliente)).FieldByName('ID_CLIENTE').AsInteger;
  finally
    vClienteController.Free;
    vCliente.Free;
  end;
end;

procedure TfrmPedidos.cbxClienteSelect(Sender: TObject);
begin
  cbxCliente.DroppedDown := False;
end;

procedure TfrmPedidos.chbPesquisaDataClick(Sender: TObject);
begin
  inherited;
  Label3.Enabled := chbPesquisaData.Checked;
  dtpDataPedido.Enabled := chbPesquisaData.Checked;
end;

constructor TfrmPedidos.Create(AOwner: TComponent);
begin
  inherited;
  FPedido := TPedido.Create;
end;

procedure TfrmPedidos.DBGrid1CellClick(Column: TColumn);
var
  vProdutoController: TProdutoController;
  vProduto: TProduto;
  vHabilitaObservacao: Boolean;
  vObservacao: string;
begin
  inherited;
  if Column.Index = DBGrid1.Columns.Count - 1 then
  begin
    if MessageDlg('Deseja realmente excluir o registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin

      FDMemTable1.Delete;

      FDMemTable1.DisableControls;
      vProdutoController := TProdutoController.Create;
      vProduto := TProduto.Create;
      vHabilitaObservacao := False;
      try
        FDMemTable1.First;

        while not (FDMemTable1.Eof) do
        begin

          vProduto.ID := FDMemTable1ID_PRODUTO.AsInteger;

          if vHabilitaObservacao = False then
          begin
            vObservacao := TFDQuery(vProdutoController.ListarProdutos(vProduto)).FieldByName('OBSERVACAO').AsString;
            vHabilitaObservacao := vObservacao <> '';
            memObservacao.Lines.Text := vObservacao;
            memObservacao.Enabled := False;
          end;
          FDMemTable1.Next;
        end;

        lblObservacao.Visible := vHabilitaObservacao;
        memObservacao.Visible := vHabilitaObservacao;

      finally
        vProdutoController.Free;
        vProduto.Free;
      end;
      FDMemTable1.EnableControls;

    end;
  end;
end;

procedure TfrmPedidos.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Grid: TDBGrid;
  ImgIndex: Integer;
  ImgX, ImgY: Integer;
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

  if Column.Index = Grid.Columns.Count - 1 then
    ImgIndex := 1
  else
    ImgIndex := -1;

  if ImgIndex >= 0 then
  begin
    ImgX := Rect.Left + (Rect.Width - ImageList1.Width) div 2;
    ImgY := Rect.Top + (Rect.Height - ImageList1.Height) div 2;

    ImageList1.Draw(DBGrid1.Canvas, ImgX, ImgY, ImgIndex);
  end;
end;

procedure TfrmPedidos.DBGridCellClick(Column: TColumn);
var
  vController: TPedidoController;
  vItemController: TItemPedidoController;
  vProdutoController: TProdutoController;
  vProduto: TProduto;
  vHabilitaObservacao: Boolean;
  vObservacao: string;
begin
  inherited;

  if FDMemTable.IsEmpty then
    Abort;

  vController := TPedidoController.Create;
  vHabilitaObservacao := False;

  try

    if Column.Index = DBGrid.Columns.Count - 2 then
    begin

      if FDMemTableSTATUS.AsString  = 'EM ROTA' then
      begin
        MessageDlg('Pedido já saiu para entrega e não poderá ser alterado', mtInformation, [mbOk], 0);
        Abort;
      end;

      if FDMemTableSTATUS.AsString = 'ENTREGUE' then
      begin
        MessageDlg('Pedido já foi entregue e não poderá ser alterado', mtInformation, [mbOk], 0);
        Abort;
      end;

      lblMenuNovo.onClick(Self);

      FTransactionState := tsEdit;

      edtPedido.Text := IntToStr(FDMemTableID_PEDIDO.AsInteger);
      dtpDataPedido.Date := FDMemTableDATA_PEDIDO.AsDateTime;
      cbxCliente.Text := FDMemTableNOME.AsString;

      edtPedido.Enabled := False;
      dtpDataPedido.Enabled := False;
      cbxCliente.Enabled := False;
      Label9.Enabled := False;
      Label3.Enabled := False;
      Label4.Enabled := False;

      vItemController := TItemPedidoController.Create;

      try
        FPedido.IDPedido := FDMemTableID_PEDIDO.AsInteger;
        FDMemTable1.CloneCursor(vItemController.ListarItensPedido(FPedido));
      finally
        vItemController.Free;
      end;

      FDMemTable1.DisableControls;
      vProdutoController := TProdutoController.Create;
      vProduto := TProduto.Create;
      try
        FDMemTable1.First;

        while not (FDMemTable1.Eof) do
        begin

          vProduto.ID := FDMemTable1ID_PRODUTO.AsInteger;

          if vHabilitaObservacao = False then
          begin
            vObservacao := TFDQuery(vProdutoController.ListarProdutos(vProduto)).FieldByName('OBSERVACAO').AsString;
            vHabilitaObservacao := vObservacao <> '';
            memObservacao.Lines.Text := vObservacao;
            memObservacao.Enabled := False;
          end;
          FDMemTable1.Next;
        end;

        lblObservacao.Visible := vHabilitaObservacao;
        memObservacao.Visible := vHabilitaObservacao;

      finally
        vProdutoController.Free;
        vProduto.Free;
      end;
      FDMemTable1.EnableControls;

    end
    else if Column.Index = DBGrid.Columns.Count - 1 then
    begin

      if FDMemTableSTATUS.AsString = 'EM ROTA' then
      begin
        MessageDlg('Pedido já saiu para entrega e não poderá ser excluído', mtInformation, [mbOk], 0);
        Abort;
      end;

      if FDMemTableSTATUS.AsString = 'ENTREGUE' then
      begin
        MessageDlg('Pedido já foi entregue e não poderá ser excluído', mtInformation, [mbOk], 0);
        Abort;
      end;

      if MessageDlg('Deseja realmente excluir o registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        vController.ExcluirPedido(FDMemTableID_PEDIDO.AsInteger);
        FDMemTable.Delete;
      end;
    end;
  finally
    vController.Free;
  end;
end;

procedure TfrmPedidos.DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Grid: TDBGrid;
  ImgIndex: Integer;
  ImgX, ImgY: Integer;
begin
 // inherited;

  Grid := Sender as TDBGrid;

  if not (gdSelected in State) then
  begin
    if (Grid.DataSource.DataSet.RecNo mod 2 = 0) then
      Grid.Canvas.Brush.Color := clCream
    else
      Grid.Canvas.Brush.Color := clWhite;

    Grid.Canvas.FillRect(Rect);
  end;

  if Grid.DataSource.DataSet.FieldByName('STATUS').AsString = 'PENDENTE' then
    Grid.Canvas.Font.Color := clWebChocolate
  else if Grid.DataSource.DataSet.FieldByName('STATUS').AsString = 'EM ROTA' then
    Grid.Canvas.Font.Color := clGreen
  else if Grid.DataSource.DataSet.FieldByName('STATUS').AsString = 'ENTREGUE' then
    Grid.Canvas.Font.Color := clBlue
  else
    Grid.Canvas.Font.Color := clWindowText;

  if gdSelected in State then
    Font.Color := clHighlightText;

  Grid.DefaultDrawColumnCell(Rect, DataCol, Column, State);

  if Column.Index = Grid.Columns.Count - 2 then
    ImgIndex := 0
  else if Column.Index = Grid.Columns.Count - 1 then
    ImgIndex := 1
  else
    ImgIndex := -1;

  if ImgIndex >= 0 then
  begin
    ImgX := Rect.Left + (Rect.Width - ImageList1.Width) div 2;
    ImgY := Rect.Top + (Rect.Height - ImageList1.Height) div 2;

    ImageList1.Draw(DBGrid.Canvas, ImgX, ImgY, ImgIndex);
  end;

end;

procedure TfrmPedidos.DBGridItensDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
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

    Grid.Canvas.FillRect(Rect);
  end;

  Grid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

destructor TfrmPedidos.Destroy;
begin
  FPedido.Free;
  inherited;
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

procedure TfrmPedidos.FDMemTableAfterScroll(DataSet: TDataSet);
var
  vController: TItemPedidoController;
  vPedido: TPedido;
begin
  inherited;
  if not (FDMemTable.IsEmpty) then
  begin
    vController := TItemPedidoController.Create;
    vPedido := TPedido.Create;
    try
      vPedido.IDPedido := FDMemTableID_PEDIDO.AsInteger;
      FDMemTable1.CloneCursor(vController.ListarItensPedido(vPedido), True);
    finally
      vPedido.Free;
      vController.Free;
    end;
  end
  else
  begin
    if FDMemTable1.Active then
      FDMemTable1.Close;
  end;
end;

procedure TfrmPedidos.Label16Click(Sender: TObject);
var
  vController: TPedidoController;
  vClienteController: TClienteController;
  vCliente: TCliente;
  vPedido: TPedido;
begin
  vController := TPedidoController.Create;
  vPedido := TPedido.create;
  try
    if (trim(edtPedido.Text) <> '') and (trim(edtPedido.Text) <> '0') then
      vPedido.IDPedido := StrToInt(edtPedido.Text);

    if chbPesquisaData.Checked then
      vPedido.DataPedido := dtpDataPedido.Date;

    if trim(cbxCliente.Text) <> '' then
    begin
      vClienteController := tClienteController.Create;
      vCliente := TCliente.Create;
      try
        vCliente.Nome := trim(cbxCliente.Text);

        vPedido.IDCliente := TFDQuery(vClienteController.ListarClientes(vCliente)).FieldByName('ID_CLIENTE').AsInteger;

      finally
        vClienteController.Free;
        vCliente.Free;
      end;
    end;

    FDMemTable.CloneCursor(vController.ListarPedido(vPedido));

    inherited;
  finally
    vController.Free;
    vPedido.Free;
  end;
end;

procedure TfrmPedidos.Label5Click(Sender: TObject);
var
  frmItensPedido: TFrmItensPedido;
  vProdutoController: TProdutoController;
  vProduto: TProduto;
  vHabilitaObservacao: Boolean;
  vObservacao: string;
  vMemTable: TFDMemTable;
begin
  frmItensPedido := TFrmItensPedido.Create(Self);
  vHabilitaObservacao := False;
  vObservacao := '';
  vProdutoController := TProdutoController.Create;
  vMemTable := TFDMemTable.Create(nil);
  vProduto := TProduto.Create;

  try
    frmItensPedido.ShowModal;
    if frmItensPedido.ItemPedido.ID_Produto > 0 then
    begin
      if not (FDMemTable1.Active) then
        FDMemTable1.Open;

      FDMemTable1.Append;
      FDMemTable1.FieldByName('ID_PRODUTO').AsInteger := frmItensPedido.ItemPedido.ID_Produto;

      if FDMemTable1.FieldByName('CODIGO').ReadOnly then
        FDMemTable1.FieldByName('CODIGO').ReadOnly := False;


      vProduto.ID :=  frmItensPedido.ItemPedido.ID_Produto;

      vMemTable.CloneCursor(vProdutoController.ListarProdutos(vProduto));

      FDMemTable1.FieldByName('CODIGO').AsString := frmItensPedido.ItemPedido.Codigo;
      FDMemTable1.FieldByName('NOME').AsString := frmItensPedido.ItemPedido.Nome;
      FDMemTable1.FieldByName('DESCRICAO').AsString := frmItensPedido.ItemPedido.Descricao;
      FDMemTable1.FieldByName('QUANTIDADE').AsInteger := frmItensPedido.ItemPedido.Quantidade;
      FDMemTable1.FieldByName('CATEGORIA').AsString := vMemTable.FieldByName('CATEGORIA').AsString ;
      FDMemTable1.FieldByName('SUBCATEGORIA').AsString := vMemTable.FieldByName('SUBCATEGORIA').AsString;
      FDMemTable1.FieldByName('PRECO').AsFloat := frmItensPedido.ItemPedido.PrecoUnitario;
      FDMemTable1.Post;

      FDMemTable1.DisableControls;


      try
        FDMemTable1.First;

        while not (FDMemTable1.Eof) do
        begin

          vProduto.ID := FDMemTable1ID_PRODUTO.AsInteger;

          if vHabilitaObservacao = False then
          begin
            vObservacao := TFDQuery(vProdutoController.ListarProdutos(vProduto)).FieldByName('OBSERVACAO').AsString;
            vHabilitaObservacao := vObservacao <> '';
            memObservacao.Lines.Text := vObservacao;
            memObservacao.Enabled := False;
          end;
          FDMemTable1.Next;
        end;

        lblObservacao.Visible := vHabilitaObservacao;
        memObservacao.Visible := vHabilitaObservacao;

      finally
        vProduto.Free;
      end;
      FDMemTable1.EnableControls;
    end;
  finally
    vMemTable.Free;
    vProdutoController.Free;
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
    edtPedido.Enabled := True;
    edtPedido.Text := IntToStr(vPedidoController.gerarNumeracaoPedido);
    FPedido.IDPedido := StrToInt(edtPedido.Text);
    cbxCliente.Enabled := True;
    cbxCliente.SetFocus;

  finally
    vPedidoController.Free;
  end;

  FDMemTable1.Close;

  chbPesquisaData.Visible := False;
  edtPedido.Enabled := False;
  dtpDataPedido.Enabled := True;

  Label9.Enabled := False;
  Label3.Enabled := True;
  Label4.Enabled := True;

  dtpDataPedido.Date := Now;

  pnlNovoItem.Visible := True;
  Panel5.Visible := False;

  lblObservacao.Visible := False;
  memObservacao.Visible := False;

end;

procedure TfrmPedidos.lblMenuPesquisaClick(Sender: TObject);
begin
  inherited;

  edtPedido.Enabled := True;
  edtPedido.SetFocus;
  dtpDataPedido.Enabled := True;
  cbxCliente.Enabled := True;
  Label9.Enabled := True;
  Label3.Enabled := True;
  Label4.Enabled := True;

  dtpDataPedido.Date := Now;
  chbPesquisaData.Visible := True;

  DBGrid.Height := Round(Screen.Height * 0.2);
  DBGrid.Align := alTop;

  DBGridItens.Align := alClient;

  FDMemTable1.Close;

  pnlNovoItem.Visible := False;
  Panel5.Visible := True;
  lblObservacao.Visible := False;
  memObservacao.Visible := False;
end;

procedure TfrmPedidos.lblMenuSalvarClick(Sender: TObject);
var
  vValidacao: TStringList;
  vController: TPedidoController;
  vItemController: TItemPedidoController;
  vItem: TItemPedido;
begin
  DBGrid1.SetFocus;
  vValidacao := TStringList.Create;
  if Trim(cbxCliente.Text) = '' then
    vValidacao.Add('- Cliente é um campo obrigatório');

  if (dtpDataPedido.Date < now - 1) and (FTransactionState = tsInsert) then
    vValidacao.Add('- Não é possível retroagir o pedido');

  if FDMemTable1.RecordCount = 0 then
    vValidacao.Add('- É necessário ter algum item ao pedido');

  if vValidacao.Count > 0 then
  begin
    MessageDlg(vValidacao.Text, mtError, [mbOK], 0);
    Abort;
  end;

  vController := TPedidoController.Create;
  vItemController := TItemPedidoController.Create;

  try

    FPedido.DataPedido := dtpDataPedido.Date;

    try
      case FTransactionState of
        tsInsert:
          begin
            vController.InserirPedido(FPedido);
          end;
      end;

      vItemController.ExcluirTodosItemPedido(FPedido.IDPedido);

      FDMemTable1.First;
      while not (FDMemTable1.Eof) do
      begin
        vItem := TItemPedido.Create;
        try
          vItem.ID_Pedido := FPedido.IDPedido;
          vItem.ID_Produto := FDMemTable1.FieldByName('ID_PRODUTO').AsInteger;
          vItem.Quantidade := FDMemTable1.FieldByName('QUANTIDADE').AsInteger;
          vItem.PrecoUnitario := FDMemTable1.FieldByName('PRECO').AsFloat;

          vItemController.InserirItemPedido(vItem);
        finally
          vItem.Free;
        end;
        FDMemTable1.Next;
      end;

      case FTransactionState of
        tsInsert:
          begin
            MessageDlg('Pedido incluído com sucesso', mtInformation, [mbOK], 0);
          end;
        tsEdit:
          begin
            MessageDlg('Pedido alterado com sucesso', mtInformation, [mbOK], 0);
          end;
      end;

    except
      on e: Exception do
      begin
        vController.ExcluirPedido(FPedido.IDPedido);
        raise Exception.Create(e.Message);
      end;
    end;

  finally
    vItemController.Free;
    vController.Free;
    vValidacao.Free;
  end;
  FDMemTable1.Close;
  edtPedido.Enabled := True;
  Label9.Enabled := True;
  inherited;
end;

end.

