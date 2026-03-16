unit ModeloAgendamento;

interface

uses
  ModeloPaciente, ModeloProcedimento;

type
  TAgendamento = class
    private
      FId: Integer;
      FPaciente: TPaciente;
      FProcedimento: TProcedimento;
      FDataHora: string;

    public
    property Id: Integer read FId write FId;
    property Paciente: TPaciente read FPaciente write FPaciente;
    property Procedimento: TProcedimento read FProcedimento write FProcedimento;
    property DataHora: string read FDataHora write FDataHora;
  end;

implementation

end.
