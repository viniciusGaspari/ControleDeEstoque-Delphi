unit U_FormaPgto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, Data.DB, Data.Win.ADODB,
  Vcl.Buttons, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrm_forma_pgto = class(TFrm_padrao)
    Q_padraoID_FORMA_PGTO: TAutoIncField;
    Q_padraoDESCRICAO: TStringField;
    Q_padraoCADASTRO: TWideStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    db_desc: TDBEdit;
    Label3: TLabel;
    db_cadastro: TDBEdit;
    procedure bt_novoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_forma_pgto: TFrm_forma_pgto;

implementation

{$R *.dfm}

procedure TFrm_forma_pgto.bt_novoClick(Sender: TObject);
  begin
    inherited;
      db_cadastro.text := datetostr(now);
      db_desc.SetFocus;
  end;

end.
