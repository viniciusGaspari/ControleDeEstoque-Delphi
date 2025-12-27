inherited Frm_forma_pgto: TFrm_forma_pgto
  Caption = 'CADASTRO DE FORMA DE PAGAMENTO'
  ClientHeight = 363
  StyleElements = [seFont, seClient, seBorder]
  ExplicitHeight = 402
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 306
    Top = 136
    Width = 92
    Height = 15
    Caption = 'ID_FORMA_PGTO'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 306
    Top = 184
    Width = 63
    Height = 15
    Caption = 'DESCRICAO'
    FocusControl = db_desc
  end
  object Label3: TLabel [2]
    Left = 502
    Top = 136
    Width = 61
    Height = 15
    Caption = 'CADASTRO'
    FocusControl = db_cadastro
  end
  inherited Panel1: TPanel
    StyleElements = [seFont, seClient, seBorder]
  end
  inherited Panel2: TPanel
    Top = 298
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 409
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DBEdit1: TDBEdit [5]
    Left = 306
    Top = 152
    Width = 154
    Height = 23
    DataField = 'ID_FORMA_PGTO'
    DataSource = ds_padrao
    Enabled = False
    TabOrder = 2
  end
  object db_desc: TDBEdit [6]
    Left = 306
    Top = 200
    Width = 454
    Height = 23
    DataField = 'DESCRICAO'
    DataSource = ds_padrao
    TabOrder = 3
  end
  object db_cadastro: TDBEdit [7]
    Left = 502
    Top = 152
    Width = 154
    Height = 23
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    Enabled = False
    TabOrder = 4
  end
  inherited Q_padrao: TADOQuery
    SQL.Strings = (
      'select * from forma_pgto order by id_forma_pgto')
    object Q_padraoID_FORMA_PGTO: TAutoIncField
      FieldName = 'ID_FORMA_PGTO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Q_padraoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object Q_padraoCADASTRO: TWideStringField
      FieldName = 'CADASTRO'
      Size = 10
    end
  end
end
