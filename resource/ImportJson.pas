unit ImportJson;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.JSON;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    FDConnection: TFDConnection;
    FDQuery: TFDQuery;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  JSONObject: TJSONObject;
  JSONArray: TJSONArray;
  I: Integer;
begin
 // JSONObject := TJSONObject.ParseJSONValue(Memo1.Lines.Text) as TJSONObject;
  JSONArray := TJSONObject.ParseJSONValue(Memo1.Lines.Text) as TJSONArray;
  if Assigned(JSONArray) then
  try
 //   JSONArray := JSONObject.GetValue<TJSONArray>('dados');
    if Assigned(JSONArray) then
    begin
        for I := 0 to JSONArray.Count - 1 do
        begin
          FDQuery.SQL.Text := 'EXECUTE PROCEDURE SP_INSERIR_CLIENTE(:P_NOME, :P_CPF, :P_TELEFONE, :P_EMAIL, :P_CEP, :P_LOGRADOURO, :P_LOGRADOURO_NUMERO, :P_CIDADE, :P_BAIRRO)';

          FDQuery.ParamByName('P_NOME').AsString := UpperCase( JSONArray.Items[I].GetValue<string>('NOME'));
          FDQuery.ParamByName('P_CPF').AsString := UpperCase(JSONArray.Items[I].GetValue<string>('CPF'));
          FDQuery.ParamByName('P_TELEFONE').AsString := UpperCase(JSONArray.Items[I].GetValue<string>('CELULAR'));
          FDQuery.ParamByName('P_EMAIL').AsString := UpperCase(JSONArray.Items[I].GetValue<string>('EMAIL'));
          FDQuery.ParamByName('P_CEP').AsString := UpperCase(JSONArray.Items[I].GetValue<string>('CEP'));
          FDQuery.ParamByName('P_LOGRADOURO').AsString := UpperCase(JSONArray.Items[I].GetValue<string>('ENDERECO'));
          FDQuery.ParamByName('P_LOGRADOURO_NUMERO').AsString := UpperCase(JSONArray.Items[I].GetValue<string>('NUMERO'));
          FDQuery.ParamByName('P_CIDADE').AsString := UpperCase(JSONArray.Items[I].GetValue<string>('CIDADE'));
          FDQuery.ParamByName('P_BAIRRO').AsString := UpperCase(JSONArray.Items[I].GetValue<string>('BAIRRO'));

          FDQuery.ExecSQL;
        end;

    end;
  finally
    JSONObject.Free;
  end;
end;

end.

