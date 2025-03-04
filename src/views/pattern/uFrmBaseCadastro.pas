unit uFrmBaseCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.StdCtrls,
  FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.Stan.Intf, FireDAC.Comp.UI,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TTransactionState = (tsInsert, tsEdit, tsSearch);

  TfrmBaseCadastro = class(TForm)
    pnlMenu: TPanel;
    pnlCentral: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    lblMenuPesquisa: TLabel;
    lblMenuNovo: TLabel;
    Label2: TLabel;
    Panel3: TPanel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    pnlManutencao: TPanel;
    pnlPesquisa: TPanel;
    DBGrid: TDBGrid;
    lblMenuSalvar: TLabel;
    lblMenuCancelar: TLabel;
    FDGUIxWaitCursor: TFDGUIxWaitCursor;
    Label16: TLabel;
    DataSource: TDataSource;
    FDMemTable: TFDMemTable;
    procedure FormResize(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure lblMenuPesquisaClick(Sender: TObject);
    procedure lblMenuNovoClick(Sender: TObject);
    procedure lblMenuNovoMouseEnter(Sender: TObject);
    procedure lblMenuPesquisaMouseEnter(Sender: TObject);
    procedure lblMenuSalvarMouseEnter(Sender: TObject);
    procedure lblMenuCancelarMouseEnter(Sender: TObject);
    procedure lblMenuCancelarMouseLeave(Sender: TObject);
    procedure lblMenuSalvarMouseLeave(Sender: TObject);
    procedure lblMenuPesquisaMouseLeave(Sender: TObject);
    procedure lblMenuNovoMouseLeave(Sender: TObject);
    procedure Label1MouseEnter(Sender: TObject);
    procedure Label1MouseLeave(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lblMenuSalvarClick(Sender: TObject);
    procedure lblMenuCancelarClick(Sender: TObject);
    procedure Label16MouseEnter(Sender: TObject);
    procedure Label16MouseLeave(Sender: TObject);
    procedure Label16Click(Sender: TObject);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    procedure LimparComponentes;
  protected
    FTransactionState: TTransactionState;
  public
    { Public declarations }

  end;

var
  frmBaseCadastro: TfrmBaseCadastro;

implementation

{$R *.dfm}

procedure TfrmBaseCadastro.DBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
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

  // Verifica se a coluna é a de edição ou exclusão
  if Column.Index = Grid.Columns.Count - 2 then
    Texto := '?' // Texto do botão de edição
  else if Column.Index = Grid.Columns.Count - 1 then
    Texto := '?' // Texto do botão de exclusão
  else
    Exit;

  // Desenha o botão na célula
  BotaoRect := Rect;
  InflateRect(BotaoRect, -3, -3); // Ajusta tamanho do botão
  Grid.Canvas.FillRect(Rect);
  Grid.Canvas.TextRect(BotaoRect, Texto, [tfCenter, tfVerticalCenter]);
end;

procedure TfrmBaseCadastro.FormCreate(Sender: TObject);
begin
  FTransactionState := tsSearch;
  pnlManutencao.Align := alClient;
  pnlManutencao.Visible := False;

  pnlPesquisa.Align := alClient;
  pnlPesquisa.Visible := False;

  DBGrid.Align := alClient;
end;

procedure TfrmBaseCadastro.FormResize(Sender: TObject);
begin
  pnlMenu.Align := alLeft;
  pnlMenu.Width := Round(Self.ClientWidth * 0.2);

  pnlCentral.Width := Round(Self.ClientWidth * 0.5);
  pnlCentral.Left := ((Self.Width + pnlMenu.Width) div 2) - (pnlCentral.Width div 2);
end;

procedure TfrmBaseCadastro.lblMenuCancelarClick(Sender: TObject);
begin
  FTransactionState := tsSearch;

  lblMenuPesquisa.Enabled := True;
  lblMenuNovo.Enabled := True;
  lblMenuSalvar.Enabled := False;
  lblMenuCancelar.Enabled := False;

  LimparComponentes;
end;

procedure TfrmBaseCadastro.lblMenuCancelarMouseEnter(Sender: TObject);
begin
  if lblMenuCancelar.Enabled then
    lblMenuCancelar.Color := clSilver;
end;

procedure TfrmBaseCadastro.lblMenuCancelarMouseLeave(Sender: TObject);
begin
  lblMenuCancelar.Color := clWhite;
end;

procedure TfrmBaseCadastro.Label16Click(Sender: TObject);
begin
  pnlPesquisa.Visible := true;
  pnlManutencao.Visible := false;
end;

procedure TfrmBaseCadastro.Label16MouseEnter(Sender: TObject);
begin
  if Label16.Enabled then
    Label16.Color := clSilver;
end;

procedure TfrmBaseCadastro.Label16MouseLeave(Sender: TObject);
begin
    Label16.Color := clWhite;
end;

procedure TfrmBaseCadastro.Label1Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmBaseCadastro.Label1MouseEnter(Sender: TObject);
begin
  if Label1.Enabled then
    Label1.Color := clSilver;
end;

procedure TfrmBaseCadastro.Label1MouseLeave(Sender: TObject);
begin
  Label1.Color := clWhite;
end;

procedure TfrmBaseCadastro.lblMenuPesquisaClick(Sender: TObject);
begin
  FTransactionState := tsSearch;

  pnlManutencao.Visible := True;
  pnlPesquisa.Visible := False;

  Label16.Visible := True;

  LimparComponentes;
end;

procedure TfrmBaseCadastro.lblMenuPesquisaMouseEnter(Sender: TObject);
begin
  if lblMenuPesquisa.Enabled then
    lblMenuPesquisa.Color := clSilver;
end;

procedure TfrmBaseCadastro.lblMenuPesquisaMouseLeave(Sender: TObject);
begin
  lblMenuPesquisa.Color := clWhite;
end;

procedure TfrmBaseCadastro.lblMenuNovoClick(Sender: TObject);
begin
  FTransactionState := tsInsert;

  pnlManutencao.Visible := true;
  pnlPesquisa.Visible := false;

  lblMenuPesquisa.Enabled := False;
  lblMenuNovo.Enabled := False;
  lblMenuSalvar.Enabled := True;
  lblMenuCancelar.Enabled := True;

  Label16.Visible := False;

  LimparComponentes;
end;

procedure TfrmBaseCadastro.lblMenuNovoMouseEnter(Sender: TObject);
begin
  if lblMenuNovo.Enabled then
    lblMenuNovo.Color := clSilver;
end;

procedure TfrmBaseCadastro.lblMenuNovoMouseLeave(Sender: TObject);
begin
  lblMenuNovo.Color := clWhite;
end;

procedure TfrmBaseCadastro.lblMenuSalvarClick(Sender: TObject);
begin
  FTransactionState := tsSearch;

  lblMenuPesquisa.Enabled := True;
  lblMenuNovo.Enabled := True;
  lblMenuSalvar.Enabled := False;
  lblMenuCancelar.Enabled := False;

  LimparComponentes;
end;

procedure TfrmBaseCadastro.lblMenuSalvarMouseEnter(Sender: TObject);
begin
  if lblMenuSalvar.Enabled then
    lblMenuSalvar.Color := clSilver;
end;

procedure TfrmBaseCadastro.lblMenuSalvarMouseLeave(Sender: TObject);
begin
  lblMenuSalvar.Color := clWhite;
end;

procedure TfrmBaseCadastro.LimparComponentes;
var
  i: Integer;
begin
  for i := 0 to Self.ComponentCount - 1 do
  begin
    if Self.Components[i] is TEdit then
      TEdit(Self.Components[i]).Text := '';
  end;
end;

end.






