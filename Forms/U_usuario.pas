unit U_usuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, Data.DB, Data.Win.ADODB,
  Vcl.Buttons, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrm_usuario = class(TFrm_padrao)
    Q_padraoid_usuario: TAutoIncField;
    Q_padraonome: TStringField;
    Q_padraosenha: TStringField;
    Q_padraotipo: TStringField;
    Q_padraocadastro: TWideStringField;
    Label1: TLabel;
    DB_id: TDBEdit;
    Label2: TLabel;
    DB_nome: TDBEdit;
    Label3: TLabel;
    DB_senha: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DB_cadastro: TDBEdit;
    DB_tipo: TDBComboBox;
    Q_padraodescricao: TStringField;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    procedure bt_novoClick(Sender: TObject);
    procedure bt_PesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_usuario: TFrm_usuario;

implementation

{$R *.dfm}

uses U_pesq_usuario;

procedure TFrm_usuario.bt_novoClick(Sender: TObject);
begin
  inherited;
  DB_cadastro.Text := DateToStr(Now);
  DB_nome.SetFocus;
end;

procedure TFrm_usuario.bt_PesquisarClick(Sender: TObject);
begin
  inherited;
  Frm_pesquisa_usuario := TFrm_pesquisa_usuario.Create(Self);
  Frm_pesquisa_usuario.ShowModal;
  try
    if Frm_pesquisa_usuario.codigo > 0 then
      begin
        Q_padrao.Open;
        Q_padrao.Locate('id_usuario', Frm_pesquisa_usuario.codigo, []);
      end;
  finally
    Frm_pesquisa_usuario.Free;
    Frm_pesquisa_usuario := nil;
  end;
end;

end.
