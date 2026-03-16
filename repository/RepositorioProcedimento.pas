unit RepositorioProcedimento;

interface

uses
  System.SysUtils, FireDac.Comp.Client, ModeloProcedimento;

type
  TProcedimentoRepository = class
    private
      FTable : TFDTable;
    public
      constructor Create(Table: TFDTable);

      procedure Adicionar(Procedimento: TProcedimento);
      procedure Excluir (Id: Integer);
  end;

implementation

constructor TProcedimentoRepository.Create(Table: TFDTable);
begin
  inherited Create;
  FTable := Table;
end;

procedure TProcedimentoRepository.Adicionar(Procedimento: TProcedimento);
  begin
    FTable.Append;

    try
      FTable.FieldByName('nome').AsString := Procedimento.Nome;
      FTable.FieldByName('codigo').AsString := Procedimento.Codigo;
      FTable.Post;
    except                                                                                                                  
      FTable.Cancel;
      raise;
    end;
  end;

procedure TProcedimentoRepository.Excluir(Id: Integer);
begin
  if FTable.Locate('id', Id, []) then
    FTable.Delete
  else
    raise Exception.Create('Produto não encontrado');  
end;
  
end.
