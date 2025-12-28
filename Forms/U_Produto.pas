unit U_Produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, Data.DB, Data.Win.ADODB,
  Vcl.Buttons, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrm_produto = class(TFrm_padrao)
    Q_padraoID_PRODUTO: TAutoIncField;
    Q_padraoPRODUTO_DESCRICAO: TStringField;
    Q_padraoID_FORNECEDOR: TIntegerField;
    Q_padraoVL_CUSTO: TBCDField;
    Q_padraoVL_VENDA: TBCDField;
    Q_padraoESTOQUE: TBCDField;
    Q_padraoESTOQUE_MIN: TBCDField;
    Q_padraoUNIDADE: TStringField;
    Q_padraoCADASTRO: TWideStringField;
    Label1: TLabel;
    dn_id_produto: TDBEdit;
    Label2: TLabel;
    db_desc_produto: TDBEdit;
    Label3: TLabel;
    db_id_fornecedor: TDBEdit;
    Label4: TLabel;
    db_vl_custo: TDBEdit;
    Label5: TLabel;
    db_vl_venda: TDBEdit;
    Label6: TLabel;
    db_estoque: TDBEdit;
    Label7: TLabel;
    db_estoque_min: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    db_cadastro: TDBEdit;
    Q_padraonome: TStringField;
    Label10: TLabel;
    db_nome_fornecedor: TDBEdit;
    dbc_unidade: TDBComboBox;
    procedure bt_novoClick(Sender: TObject);
    procedure bt_PesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_produto: TFrm_produto;

implementation

{$R *.dfm}

uses U_pesq_produtos;

procedure TFrm_produto.bt_novoClick(Sender: TObject);
begin
  inherited;
  db_cadastro.Text := datetostr(now);
  db_desc_produto.SetFocus;
end;

procedure TFrm_produto.bt_PesquisarClick(Sender: TObject);
begin
  inherited;
  with TFrm_pesq_produtos.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
end;


end.
