inherited Frm_cliente: TFrm_cliente
  Caption = 'CADASTRO DE CLIENTES'
  ClientHeight = 449
  StyleElements = [seFont, seClient, seBorder]
  ExplicitHeight = 488
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 306
    Top = 104
    Width = 11
    Height = 15
    Caption = 'ID'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 552
    Top = 104
    Width = 35
    Height = 15
    Caption = 'NOME'
    FocusControl = DB_nome
  end
  object Label3: TLabel [2]
    Left = 557
    Top = 200
    Width = 59
    Height = 15
    Caption = 'ENDERECO'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [3]
    Left = 690
    Top = 152
    Width = 50
    Height = 15
    Caption = 'NUMERO'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [4]
    Left = 484
    Top = 154
    Width = 41
    Height = 15
    Caption = 'BAIRRO'
    FocusControl = DBEdit5
  end
  object Label6: TLabel [5]
    Left = 306
    Top = 203
    Width = 41
    Height = 15
    Caption = 'CIDADE'
    FocusControl = DBEdit6
  end
  object Label7: TLabel [6]
    Left = 479
    Top = 205
    Width = 14
    Height = 15
    Caption = 'UF'
    FocusControl = DBEdit7
  end
  object Label8: TLabel [7]
    Left = 306
    Top = 152
    Width = 21
    Height = 15
    Caption = 'CEP'
    FocusControl = DBEdit8
  end
  object Label9: TLabel [8]
    Left = 306
    Top = 256
    Width = 55
    Height = 15
    Caption = 'TELEFONE'
    FocusControl = DBEdit9
  end
  object Label10: TLabel [9]
    Left = 388
    Top = 104
    Width = 21
    Height = 15
    Caption = 'CPF'
    FocusControl = DBEdit10
  end
  object Label11: TLabel [10]
    Left = 570
    Top = 251
    Width = 34
    Height = 15
    Caption = 'EMAIL'
    FocusControl = t
  end
  object Label12: TLabel [11]
    Left = 306
    Top = 301
    Width = 61
    Height = 15
    Caption = 'CADASTRO'
    FocusControl = DB_cadastro
  end
  inherited Panel1: TPanel
    TabOrder = 10
    StyleElements = [seFont, seClient, seBorder]
  end
  inherited Panel2: TPanel
    Top = 384
    TabOrder = 11
    StyleElements = [seFont, seClient, seBorder]
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DBEdit1: TDBEdit [14]
    Left = 306
    Top = 120
    Width = 63
    Height = 23
    DataField = 'ID_CLIENTE'
    DataSource = ds_padrao
    Enabled = False
    TabOrder = 12
  end
  object DB_nome: TDBEdit [15]
    Left = 552
    Top = 120
    Width = 208
    Height = 23
    DataField = 'NOME'
    DataSource = ds_padrao
    TabOrder = 1
  end
  object DBEdit3: TDBEdit [16]
    Left = 557
    Top = 221
    Width = 203
    Height = 23
    DataField = 'ENDERECO'
    DataSource = ds_padrao
    TabOrder = 7
  end
  object DBEdit4: TDBEdit [17]
    Left = 690
    Top = 173
    Width = 70
    Height = 23
    DataField = 'NUMERO'
    DataSource = ds_padrao
    TabOrder = 4
  end
  object DBEdit5: TDBEdit [18]
    Left = 481
    Top = 173
    Width = 192
    Height = 23
    DataField = 'BAIRRO'
    DataSource = ds_padrao
    TabOrder = 3
  end
  object DBEdit6: TDBEdit [19]
    Left = 306
    Top = 224
    Width = 154
    Height = 23
    DataField = 'CIDADE'
    DataSource = ds_padrao
    TabOrder = 5
  end
  object DBEdit7: TDBEdit [20]
    Left = 479
    Top = 221
    Width = 58
    Height = 23
    DataField = 'UF'
    DataSource = ds_padrao
    TabOrder = 6
  end
  object DBEdit8: TDBEdit [21]
    Left = 306
    Top = 173
    Width = 154
    Height = 23
    DataField = 'CEP'
    DataSource = ds_padrao
    MaxLength = 9
    TabOrder = 2
  end
  object DBEdit9: TDBEdit [22]
    Left = 306
    Top = 272
    Width = 244
    Height = 23
    DataField = 'TELEFONE'
    DataSource = ds_padrao
    MaxLength = 13
    TabOrder = 8
  end
  object DBEdit10: TDBEdit [23]
    Left = 388
    Top = 120
    Width = 142
    Height = 23
    DataField = 'CPF'
    DataSource = ds_padrao
    MaxLength = 14
    TabOrder = 0
  end
  object t: TDBEdit [24]
    Left = 570
    Top = 272
    Width = 190
    Height = 23
    DataField = 'EMAIL'
    DataSource = ds_padrao
    TabOrder = 9
  end
  object DB_cadastro: TDBEdit [25]
    Left = 306
    Top = 320
    Width = 454
    Height = 23
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    Enabled = False
    TabOrder = 13
  end
  inherited Q_padrao: TADOQuery
    SQL.Strings = (
      'select * from cliente order by id_cliente')
    object Q_padraoID_CLIENTE: TAutoIncField
      FieldName = 'ID_CLIENTE'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Q_padraoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object Q_padraoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 30
    end
    object Q_padraoNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object Q_padraoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object Q_padraoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object Q_padraoUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object Q_padraoCEP: TStringField
      FieldName = 'CEP'
      EditMask = '00000\-999;1;_'
      Size = 16
    end
    object Q_padraoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      EditMask = '!\(99\)0000-0000;0;_'
      Size = 16
    end
    object Q_padraoCPF: TStringField
      FieldName = 'CPF'
      EditMask = '000\.000\.000\-00;0;_'
      Size = 16
    end
    object Q_padraoEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 30
    end
    object Q_padraoCADASTRO: TWideStringField
      FieldName = 'CADASTRO'
      Size = 10
    end
  end
end
