unit UDmUC;

interface

uses
  SysUtils, Classes, DB,UCBase,
  UCDataConnector, UCIBXConn,
  IBCustomDataSet, IBDatabase;

type
  TdmUC = class(TDataModule)
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    QryBanco: TIBDataSet;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmUC: TdmUC;

implementation

uses
  sWSystem;

{$R *.dfm}

procedure TdmUC.DataModuleCreate(Sender: TObject);
begin
  IBDatabase1.Close;
  IBDatabase1.DatabaseName := gsAppPath + '..\DBase\APLICATIVO_UC.FDB';
  IBDatabase1.Open;
end;

end.
