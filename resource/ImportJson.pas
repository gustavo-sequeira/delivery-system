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

          FDQuery.ParamByName('P_NOME').AsString := UpperCase( JSONArray.Items[I].GetValue<string>('nome'));
          FDQuery.ParamByName('P_CPF').AsString := UpperCase(JSONArray.Items[I].GetValue<string>('cpf'));
          FDQuery.ParamByName('P_TELEFONE').AsString := UpperCase(JSONArray.Items[I].GetValue<string>('celular'));
          FDQuery.ParamByName('P_EMAIL').AsString := UpperCase(JSONArray.Items[I].GetValue<string>('email'));
          FDQuery.ParamByName('P_CEP').AsString := UpperCase(JSONArray.Items[I].GetValue<string>('cep'));
          FDQuery.ParamByName('P_LOGRADOURO').AsString := UpperCase(JSONArray.Items[I].GetValue<string>('endereco'));
          FDQuery.ParamByName('P_LOGRADOURO_NUMERO').AsString := UpperCase(JSONArray.Items[I].GetValue<string>('numero'));
          FDQuery.ParamByName('P_CIDADE').AsString := UpperCase(JSONArray.Items[I].GetValue<string>('cidade'));
          FDQuery.ParamByName('P_BAIRRO').AsString := UpperCase(JSONArray.Items[I].GetValue<string>('bairro'));

          FDQuery.ExecSQL;
        end;

    end;
  finally
    JSONObject.Free;
  end;
end;

end.

