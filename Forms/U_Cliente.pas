unit U_Cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, Data.DB, Data.Win.ADODB,
  Vcl.Buttons, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrm_cliente = class(TFrm_padrao)
    Q_padraoID_CLIENTE: TAutoIncField;
    Q_padraoNOME: TStringField;
    Q_padraoENDERECO: TStringField;
    Q_padraoNUMERO: TIntegerField;
    Q_padraoBAIRRO: TStringField;
    Q_padraoCIDADE: TStringField;
    Q_padraoUF: TStringField;
    Q_padraoCEP: TStringField;
    Q_padraoTELEFONE: TStringField;
    Q_padraoCPF: TStringField;
    Q_padraoEMAIL: TStringField;
    Q_padraoCADASTRO: TWideStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DB_nome: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    t: TDBEdit;
    Label12: TLabel;
    DB_cadastro: TDBEdit;
    procedure bt_novoClick(Sender: TObject);
    procedure bt_PesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_cliente: TFrm_cliente;

implementation

{$R *.dfm}

uses U_pesq_cliente;

procedure TFrm_cliente.bt_novoClick(Sender: TObject);
begin
  inherited;
  DB_cadastro.Text := datetostr(now);
end;

procedure TFrm_cliente.bt_PesquisarClick(Sender: TObject);
begin
  inherited;
  Frm_pesq_cliente := TFrm_pesq_cliente.Create(Self);
  Frm_pesq_cliente.ShowModal;
  try
  finally
    Frm_pesq_cliente.Free;
    Frm_pesq_cliente := nil;
  end;
end;

end.
