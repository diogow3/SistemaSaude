unit ModeloAgendamento;

interface

//uses ModeloPaciente, ModeloProcedimento;

type
  TAgendamento = class
    private
      FId: Integer;
      FPacienteId: Integer;
      FProcedimentoId: Integer;
      FDataHora: string;

    public
    property Id: Integer read FId write FId;
    property PacienteId: Integer read FPacienteId write FPacienteId;
    property ProcedimentoId: Integer read FProcedimentoId write FProcedimentoId;
    property DataHora: string read FDataHora write FDataHora;
  end;

implementation

end.
