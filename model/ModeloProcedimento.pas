unit ModeloProcedimento;

interface

type
  TProcedimento = class
    private
      FId: Integer;
      FNome: string;
      FCodigo: string;
    public
    property Id: Integer read FId write FId;
    property Nome: string read FNome write FNome;
    property Codigo: string read FCodigo write FCodigo;
  end;

implementation

end.
