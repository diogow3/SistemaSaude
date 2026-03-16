unit TelaProcedimentos;

interface

uses
  DataModule, ModeloProcedimento, RepositorioProcedimento,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ComCtrls;

type
  TfrmTelaProcedimentos = class(TForm)
    lblProcedimentos: TLabel;
    dbgrdProcedimentos: TDBGrid;
    dsProcedimentos: TDataSource;
    pgcProcedimentos: TPageControl;
    tsProcedimentosCadastrados: TTabSheet;
    tsCadastrarProcedimento: TTabSheet;
    tsExcluirProcedimento: TTabSheet;
    cbExcluirProcedimento: TDBLookupComboBox;
    dsExcluirProcedimento: TDataSource;
    btnExcluirProcedimento: TButton;
    lblNome: TLabel;
    lblCodigo: TLabel;
    edtNome: TEdit;
    edtCodigo: TEdit;
    btnCadastrar: TButton;
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnExcluirProcedimentoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelaProcedimentos: TfrmTelaProcedimentos;

implementation

{$R *.dfm}

procedure TfrmTelaProcedimentos.btnCadastrarClick(Sender: TObject);
var
  Procedimento: TProcedimento;
  Repositorio: TProcedimentoRepository;
begin
  Procedimento := TProcedimento.Create;
  try
    Procedimento.Nome := edtNome.Text;
    Procedimento.Codigo := edtCodigo.Text;

    Repositorio := TProcedimentoRepository.Create(dtmdlPrincipal.fdtblprocedimento);
    Repositorio.Adicionar(Procedimento);
    ShowMessage('Procedimento Cadastrado');
  finally
    Procedimento.Free;
    Repositorio.Free;
  end;
end;

procedure TfrmTelaProcedimentos.btnExcluirProcedimentoClick(Sender: TObject);
var
  Repositorio : TProcedimentoRepository;
  Id: Integer;
begin
  if cbExcluirProcedimento.KeyValue = Null then
    begin
      ShowMessage('Selecione um Produto para Excluir');
      Exit;
    end;

  Id := cbExcluirProcedimento.KeyValue;
  Repositorio := TProcedimentoRepository.Create(dtmdlPrincipal.fdtblprocedimento);
  try
    Repositorio.Excluir(Id);
    ShowMessage('Produto Exluido');
  finally
    Repositorio.Free;
  end;

end;

end.
