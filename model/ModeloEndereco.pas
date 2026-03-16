unit ModeloEndereco;

interface

type
  TEndereco = class
  private
    FId: Integer;
    FCEP: string;
    FLogradouro: string;
    FBairro: string;
    FCidade: string;
    FComplemento: string;

  public
    property Id: Integer read FId write FId;
    property CEP: string read FCEP write FCEP;
    property Logradouro: string read FLogradouro write FLogradouro;
    property Bairro: string read FBairro write FBairro;
    property Cidade: string read FCidade write FCidade;
    property Complemento: string read FComplemento write FComplemento;

  end;

implementation

end.
