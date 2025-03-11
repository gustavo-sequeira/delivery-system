unit uFrmEntregadores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmBaseCadastro, Data.DB,
  FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, System.ImageList, Vcl.ImgList, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Comp.UI, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TfrmEntregadores = class(TfrmBaseCadastro)
    Label4: TLabel;
    Label8: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    edtNome: TEdit;
    edtTelefone: TEdit;
    edtCidade: TEdit;
    edtBairro: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEntregadores: TfrmEntregadores;

implementation

{$R *.dfm}

end.
