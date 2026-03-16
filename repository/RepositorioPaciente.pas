unit RepositorioPaciente;

interface

uses
  System.SysUtils, FireDac.Comp.Client, ModeloPaciente;

type
  TPacienteRepository = class
    private
      FTable : TFDTable;
    public
      constructor Create(Table: TFDTable);

      procedure Adicionar(Paciente: TPaciente);
      procedure Excluir (Id: Integer);
  end;

implementation

constructor TPacienteRepository.Create(Table: TFDTable);
begin
  inherited Create;
  FTable := Table;
end;

procedure TPacienteRepository.Adicionar(Paciente: TPaciente);
  begin
    FTable.Append;

    try
      FTable.FieldByName('nome').AsString := Paciente.Nome;
      FTable.FieldByName('cartaosus').AsString := Paciente.CartaoSUS;
      FTable.Post;
    except
      FTable.Cancel;
      raise;
    end;
  end;

procedure TPacienteRepository.Excluir(Id: Integer);
begin
  if FTable.Locate('id', Id, []) then
    FTable.Delete
  else
    raise Exception.Create('Paciente não encontrado');
end;

end.
