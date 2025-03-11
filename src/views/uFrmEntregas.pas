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
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.DApt;

type
  TfrmEntregas = class(TfrmBaseCadastro)
    DBGrid1: TDBGrid;
    Label4: TLabel;
    Panel4: TPanel;
    Panel6: TPanel;
    dsPedidos: TDataSource;
    memPedidos: TFDMemTable;
    FDConnection1: TFDConnection;
    p: TFDQuery;
    Label6: TLabel;
    DBGrid2: TDBGrid;
    Panel7: TPanel;
    ComboBox1: TComboBox;
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
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
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
    procedure memPedidosAfterScroll(DataSet: TDataSet);
    procedure lblMenuNovoClick(Sender: TObject);
    procedure lblMenuPedidosMouseEnter(Sender: TObject);
    procedure lblMenuPedidosMouseLeave(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEntregas: TfrmEntregas;

implementation

uses
  uItemPedidoController, uPedido, uEntregaController;

{$R *.dfm}

procedure TfrmEntregas.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
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

procedure TfrmEntregas.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
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

  Grid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfrmEntregas.lblMenuNovoClick(Sender: TObject);
var
  vController: TEntregaController;
begin
  inherited;
  vController := TEntregaController.Create;
  try
    memPedidos.CloneCursor(vController.ListarPedidos, True);
  finally
    vController.Free;
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
      memItens.CloneCursor(vController.ListarItensPedido(vPedido));
    finally
      vPedido.Free;
      vController.Free;
    end;
  end;
end;

end.

