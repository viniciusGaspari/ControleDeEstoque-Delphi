unit U_Fornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, Data.DB, Data.Win.ADODB,
  Vcl.Buttons, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrm_fornecedor = class(TFrm_padrao)
    Q_padraoID_FORNECEDOR: TAutoIncField;
    Q_padraoNOME: TStringField;
    Q_padraoENDERECO: TStringField;
    Q_padraoNUMERO: TIntegerField;
    Q_padraoBAIRRO: TStringField;
    Q_padraoCIDADE: TStringField;
    Q_padraoUF: TStringField;
    Q_padraoCEP: TStringField;
    Q_padraoTELEFONE: TStringField;
    Q_padraoCNPJ: TStringField;
    Q_padraoEMAIL: TStringField;
    Q_padraoCADASTRO: TWideStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    db_nome: TDBEdit;
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
    DBEdit11: TDBEdit;
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
  Frm_fornecedor: TFrm_fornecedor;

implementation

{$R *.dfm}

uses U_pesq_fornecedor;

procedure TFrm_fornecedor.bt_novoClick(Sender: TObject);
begin
  inherited;
  DB_cadastro.Text := datetostr(now);
  db_nome.SetFocus;
end;

procedure TFrm_fornecedor.bt_PesquisarClick(Sender: TObject);
begin
  inherited;
  Frm_pesq_fornecedor := TFrm_pesq_fornecedor.Create(Self);
  Frm_pesq_fornecedor.ShowModal;
  try
    if Frm_pesq_fornecedor.codigo > 0 then
      begin
        Q_padrao.Open;
        Q_padrao.Locate('id_fornecedor', Frm_pesq_fornecedor.codigo, []);
      end;
  finally
    Frm_pesq_fornecedor.Free;
    Frm_pesq_fornecedor := nil;
  end;
end;

end.
