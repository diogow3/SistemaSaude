unit ServicoCEP;

interface

uses
  ModeloEndereco, REST.Client, REST.Types, System.Classes, System.JSON, System.SysUtils;

type
  TServicoEndereco = class
  private
    FClient: TRESTClient;
    FRequest: TRESTRequest;
    FResponse: TRESTResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function ObterEndereco(CEP: string): TEndereco;
  end;


implementation


constructor TServicoEndereco.Create;
begin
  FClient := TRESTClient.Create('https://viacep.com.br/ws/');
  FRequest := TRESTRequest.Create(nil);
  FResponse := TRESTResponse.Create(nil);

  FRequest.Client := FClient;
  FRequest.Response := FResponse;
end;

destructor TServicoEndereco.Destroy;
begin
  FClient.Free;
  FRequest.Free;
  FResponse.Free;
  inherited;
end;

function TServicoEndereco.ObterEndereco(CEP: string): TEndereco;
begin
  try
    FRequest.Resource := Cep + '/json/';
    FRequest.Method := rmGET;
    FRequest.Execute;

    if FResponse.StatusCode <> 200 then
      raise Exception.CreateFmt('Erro na requisição: %d - %s',
        [FResponse.StatusCode, FResponse.StatusText]);

    var JSONObj := TJSONObject.ParseJSONValue(FResponse.Content) as TJSONObject;

    Result := TEndereco.Create;
    Result.CEP := JSONObj.GetValue<string>('cep');
    Result.Logradouro := JSONObj.GetValue<string>('logradouro');
    Result.Complemento := JSONObj.GetValue<string>('complemento');
    Result.Bairro := JSONObj.GetValue<string>('bairro');
    Result.Cidade := JSONObj.GetValue<string>('localidade');
  except
    on E: Exception do
      raise Exception.Create('Falha ao obter endereço: ' + E.Message);
  end;
end;

end.
