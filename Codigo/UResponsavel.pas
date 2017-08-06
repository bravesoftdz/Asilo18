unit UResponsavel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, Buttons, DBClient, SimpleDS, DB, SqlExpr,
  Mask, DBCtrls;

type
  TResponsavel = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    edtPesquisa: TEdit;
    sqlAux: TSQLQuery;
    sdsAux: TSimpleDataSet;
    dsAux: TDataSource;
    Name: TDBEdit;
    BitBtn1: TBitBtn;
    Cod: TDBEdit;
    sdsAuxx: TSimpleDataSet;
    aux: TDataSource;
    procedure edtPesquisaChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Responsavel: TResponsavel;

implementation

uses UModulo;

{$R *.dfm}

procedure TResponsavel.edtPesquisaChange(Sender: TObject);
var Texto, TSQL, Parametro : String;
 begin
      sdsAux.Close;

      TSQL := 'select NOME from RESIDENTE ';
      If edtPesquisa.Text = ''
      Then Begin
      Texto := TSQL;
      sdsAux.DataSet.CommandText := Texto;
      End
      Else Begin
      Texto := TSQL + ' WHERE NOME LIKE :PROCURE ' ;
      sdsAux.DataSet.CommandText := Texto;
      Parametro := edtPesquisa.Text + '%';
      sdsAux.DataSet.Params.ParamByName('PROCURE').AsString := Parametro;

      End;
      sdsAux.Open;
      //DBEdit2.Text := Cod.Text;
      //DBEdit3.Text := Name.Text;
      exit;

   sdsAuxx.Close;


      If edtPesquisa.Text = ''
      Then Begin

      sdsAuxx.DataSet.CommandText := Texto;
      End
      Else Begin

      sdsAuxx.DataSet.CommandText := Texto;
      Parametro := edtPesquisa.Text + '%';
      sdsAuxx.DataSet.Params.ParamByName('PROCURE').AsString := Parametro;

      End;
      sdsAuxx.Open;
      //DBEdit2.Text := Cod.Text;
      //DBEdit3.Text := Name.Text;
      exit;

      end;

procedure TResponsavel.BitBtn1Click(Sender: TObject);
begin
DBEdit2.Text := Cod.Text;
DBEdit3.Text := Name.Text;
DBEdit2.Visible := True;
DBEdit3.Visible := True;
end;

procedure TResponsavel.FormCreate(Sender: TObject);
begin
if DBEdit1.Text = ''
Then Begin
      //btnEditar.Enabled := False;
      End
      Else Begin
      //btnEditar.Enabled := True;;
      End;
end;

end.
