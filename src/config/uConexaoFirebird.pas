unit UConexaoFirebird;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Comp.Client;

type
  TConexaoFirebird = class
  private
    FDConnection: TFDConnection;
  public
    constructor Create;
    destructor Destroy; override;
    function Conectar(const CaminhoBanco, Usuario, Senha: string): Boolean;
    function GetConnection: TFDConnection;
  end;

implementation

uses FireDAC.Stan.Def, FireDAC.Phys, FireDAC.Phys.IBBase, FireDAC.Phys.FB;

{ TConexaoFirebird }

constructor TConexaoFirebird.Create;
begin
  FDConnection := TFDConnection.Create(nil);
end;

destructor TConexaoFirebird.Destroy;
begin
  FDConnection.Free;
  inherited;
end;

function TConexaoFirebird.Conectar(const CaminhoBanco, Usuario, Senha: string): Boolean;
begin
  Result := False;
  try
    FDConnection.Close;
    FDConnection.Params.Clear;
    FDConnection.DriverName := 'FB';
    FDConnection.Params.Add('Database=' + CaminhoBanco);
    FDConnection.Params.Add('User_Name=' + Usuario);
    FDConnection.Params.Add('Password=' + Senha);
    FDConnection.Params.Add('Protocol=TCPIP');
    FDConnection.Params.Add('Server=localhost');
    FDConnection.Params.Add('CharacterSet=UTF8');
    FDConnection.Params.Add('Port=3050');
    FDConnection.LoginPrompt := False;
    FDConnection.Connected := True;
    Result := FDConnection.Connected;
  except
    on E: Exception do
      raise Exception.Create('Erro ao conectar ao banco: ' + E.Message);
  end;
end;

function TConexaoFirebird.GetConnection: TFDConnection;
begin
  Result := FDConnection;
end;

end.

