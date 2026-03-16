unit ModeloPaciente;

interface

uses
  ModeloEndereco;

type
  TPaciente = class
    private
      FId: Integer;
      FNome: string;
      FCartaoSUS: string;
      FEndereco: TEndereco;

    public
    property Id: Integer read FId write FId;
    property Nome: string read FNome write FNome;
    property CartaoSUS: string read FCartaoSUS write FCartaoSUS;
    property Endereco: TEndereco read FEndereco write FEndereco;
  end;

implementation

end.
