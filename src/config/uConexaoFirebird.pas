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
    procedure Conectar(const CaminhoBanco, Usuario, Senha: string);
    function GetConnection: TFDConnection;
  end;

implementation

uses FireDAC.Stan.Def, FireDAC.Phys, FireDAC.Phys.IBBase, FireDAC.Phys.FB;

{ TConexaoFirebird }

constructor TConexaoFirebird.Create;
begin
  FDConnection := TFDConnection.Create(nil);
  Self.Conectar(ExtractFileDir(ExtractFileDir(ExtractFileDir(ExtractFileDir(ExtractFilePath(ParamStr(0)))))) + '\database\delivery.fdb', 'sysdba', 'masterkey');
end;

destructor TConexaoFirebird.Destroy;
begin
  FDConnection.Free;
  inherited;
end;

procedure TConexaoFirebird.Conectar(const CaminhoBanco, Usuario, Senha: string);
begin
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

