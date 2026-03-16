unit DataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Phys.PGDef, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.PG, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TdtmdlPrincipal = class(TDataModule)
    fdphyspgdrvrlnk1: TFDPhysPgDriverLink;
    con1: TFDConnection;
    fdtblpaciente: TFDTable;
    fdtblendereco: TFDTable;
    fdtblagendamento: TFDTable;
    fdtblprocedimento: TFDTable;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmdlPrincipal: TdtmdlPrincipal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
