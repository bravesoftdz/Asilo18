unit USMTP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, Mask, DBCtrls, FMTBcd, SqlExpr;

type
  TSMTP = class(TForm)
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
    btnEditar: TBitBtn;
    btnInserir: TBitBtn;
    btnDeletar: TBitBtn;
    btnCancelar: TBitBtn;
    btnGravar: TBitBtn;
    Esquerda: TBitBtn;
    Direita: TBitBtn;
    sqlAux: TSQLQuery;
    procedure btnEditarClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure EsquerdaClick(Sender: TObject);
    procedure DireitaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SMTP: TSMTP;

implementation

uses UModulo;

{$R *.dfm}

procedure TSMTP.btnEditarClick(Sender: TObject);
begin
Modulo.cdsEmail.Edit;
          btnInserir.Enabled    := False;
          btnDeletar.Enabled    := False;

          btnEditar.Enabled     := False;
          Direita.Enabled       := False;
          Esquerda.Enabled      := False;

          DBEdit2.Enabled       := True;
          DBEdit3.Enabled       := True;
          DBEdit4.Enabled       := True;
          DBEdit5.Enabled       := True;

          btnGravar.Enabled      := True;
end;

procedure TSMTP.btnInserirClick(Sender: TObject);
Var NReg : integer;
begin

          btnInserir.Enabled    := False;
          btnDeletar.Enabled    := False;
          btnEditar.Enabled     := False;
          Direita.Enabled       := False;
          Esquerda.Enabled      := False;

          DBEdit2.Enabled       := True;
          DBEdit3.Enabled       := True;
          DBEdit4.Enabled       := True;
          DBEdit5.Enabled       := True;


          btnGravar.Enabled      := True;



          sqlAux.Close;


          sqlAux.SQL.Clear;
          sqlAux.SQL.Add('SELECT MAX(ID) AS ULTIMO FROM EMAIL');

          sqlAux.Open;
           If sqlAux.FieldByName('ULTIMO').Value = Null
           Then NReg :=1
           Else NReg := sqlAux.FieldByName('ULTIMO').Value + 1;

           Modulo.cdsEmail.Insert;


           Modulo.cdsEmailID.Value := NReg;


           DBEdit2.SetFocus;
end;

procedure TSMTP.btnDeletarClick(Sender: TObject);
begin
          DBEdit2.Enabled       := False;
          DBEdit3.Enabled       := False;
          DBEdit4.Enabled       := False;
          DBEdit5.Enabled       := False;

 If
           MessageDlg ('Voc� tem certeza que deseja excluir?',
                       mtWarning,
                       [mbyes,mbno],
                       0)
          = mryes Then Begin
                         Modulo.cdsEmail.Delete;
                         Modulo.cdsEmail.ApplyUpdates(-1);
                         ShowMessage ('Registro Excluido com sucesso!');
                       End
                  Else Begin
                          ShowMessage ('Nenhum registro deletado!');
                       End;

end;

procedure TSMTP.btnCancelarClick(Sender: TObject);
begin
Modulo.cdsEmail.Cancel;
          DBEdit2.Enabled       := False;
          DBEdit3.Enabled       := False;
          DBEdit4.Enabled       := False;
          DBEdit5.Enabled       := False;

          btnInserir.Enabled    := True;
          btnDeletar.Enabled    := True;
          btnEditar.Enabled     := True;
          Direita.Enabled       := True;
          Esquerda.Enabled      := True;

          // Ligar o Gravar
          btnGravar.Enabled      := False;


end;

procedure TSMTP.btnGravarClick(Sender: TObject);
begin
Modulo.cdsEmail.Post;

         Modulo.cdsEmail.ApplyUpdates(-1);

         btnCancelar.Click;
end;

procedure TSMTP.EsquerdaClick(Sender: TObject);
begin
Modulo.cdsEmail.Prior;
end;

procedure TSMTP.DireitaClick(Sender: TObject);
begin
Modulo.cdsEmail.Next;
end;

procedure TSMTP.FormCreate(Sender: TObject);
begin
if DBEdit1.Text = ''
Then Begin
      btnEditar.Enabled := False;
      End
      Else Begin
      btnEditar.Enabled := True;;
      End;
end;

end.
