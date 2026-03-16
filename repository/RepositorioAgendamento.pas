unit RepositorioAgendamento;

interface

uses
  System.SysUtils, FireDac.Comp.Client, ModeloAgendamento;

type
  TAgendamentoRepository = class
    private
      FTable : TFDTable;
    public
      constructor Create(Table: TFDTable);

      procedure Adicionar(Agendamento: TAgendamento);
  end;

implementation

constructor TAgendamentoRepository.Create(Table: TFDTable);
begin
  inherited Create;
  FTable := Table;
end;

procedure TAgendamentoRepository.Adicionar(Agendamento: TAgendamento);
  begin
    FTable.Append;

    try
      FTable.FieldByName('idPaciente').AsInteger := Agendamento.Paciente.Id;
      FTable.FieldByName('idProcedimento').AsInteger := Agendamento.Procedimento.Id;
      FTable.FieldByName('datahora').AsString := Agendamento.DataHora;
      FTable.Post;
    except
      FTable.Cancel;
      raise;
    end;
  end;

end.
