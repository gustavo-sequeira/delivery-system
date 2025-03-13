unit uFrmFinalizacaoPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmFinalizacaoPedido = class(TForm)
    Label16: TLabel;
    Panel1: TPanel;
    Label6: TLabel;
    Label1: TLabel;
    Memo1: TMemo;
    Label2: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label6Click(Sender: TObject);
    procedure Label16MouseEnter(Sender: TObject);
    procedure Label16MouseLeave(Sender: TObject);
    procedure Label16Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFinalizacaoPedido: TfrmFinalizacaoPedido;

implementation

{$R *.dfm}

procedure TfrmFinalizacaoPedido.Label16Click(Sender: TObject);
begin
  Self.ModalResult := mrOk;
  Self.CloseModal;
end;

procedure TfrmFinalizacaoPedido.Label16MouseEnter(Sender: TObject);
begin
  Label16.Color := clSilver;
end;

procedure TfrmFinalizacaoPedido.Label16MouseLeave(Sender: TObject);
begin
  Label16.Color := clWhite;
end;

procedure TfrmFinalizacaoPedido.Label6Click(Sender: TObject);
begin
  Self.ModalResult := mrCancel;
  Self.Close;
end;

procedure TfrmFinalizacaoPedido.Panel1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(Handle, WM_SYSCOMMAND, $F012, 0);
end;

end.
