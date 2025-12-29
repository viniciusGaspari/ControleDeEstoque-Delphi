inherited Frm_pesq_produtos: TFrm_pesq_produtos
  Caption = 'PESQUISA PRODUTOS'
  StyleElements = [seFont, seClient, seBorder]
  TextHeight = 15
  inherited Panel1: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited Panel4: TPanel
      StyleElements = [seFont, seClient, seBorder]
      inherited bt_imprimir: TBitBtn
        OnClick = bt_imprimirClick
      end
      inherited bt_Pesquisar: TBitBtn
        OnClick = bt_PesquisarClick
      end
    end
    inherited Panel5: TPanel
      StyleElements = [seFont, seClient, seBorder]
      inherited Label3: TLabel
        StyleElements = [seFont, seClient, seBorder]
      end
      inherited Label2: TLabel
        StyleElements = [seFont, seClient, seBorder]
      end
      inherited lbFiltro: TLabel
        StyleElements = [seFont, seClient, seBorder]
      end
      inherited cb_chave_pesquisa: TComboBox
        StyleElements = [seFont, seClient, seBorder]
        OnChange = cb_chave_pesquisaChange
        Items.Strings = (
          'C'#211'DIGO'
          'DESCRI'#199#195'O'
          'C'#211'DIGO FORNECEDOR'
          'VALOR CUSTO'
          'VALOR VENDA'
          'ESTOQUE'
          'ESTOQUE MIN'
          'UNIDADE'
          'CADASTRO'
          'PER'#205'ODO'
          'TODOS OS REGISTROS')
      end
      inherited mk_fim: TMaskEdit
        StyleElements = [seFont, seClient, seBorder]
      end
      inherited mk_inicio: TMaskEdit
        StyleElements = [seFont, seClient, seBorder]
      end
      inherited ed_pesquisa: TMaskEdit
        StyleElements = [seFont, seClient, seBorder]
      end
    end
  end
  inherited Panel2: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited Label7: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited Label8: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited Panel3: TPanel
      StyleElements = [seFont, seClient, seBorder]
      inherited Label1: TLabel
        StyleElements = [seFont, seClient, seBorder]
      end
      inherited Label4: TLabel
        StyleElements = [seFont, seClient, seBorder]
      end
    end
  end
  inherited Q_pesq_padrao: TADOQuery
    Active = True
    SQL.Strings = (
      'select * from produto order by id_produto')
    object Q_pesq_padraoID_PRODUTO: TAutoIncField
      DisplayLabel = 'C'#211'DIGO'
      FieldName = 'ID_PRODUTO'
      ReadOnly = True
    end
    object Q_pesq_padraoPRODUTO_DESCRICAO: TStringField
      DisplayLabel = 'DESCRI'#199#195'O'
      FieldName = 'PRODUTO_DESCRICAO'
      Size = 30
    end
    object Q_pesq_padraoID_FORNECEDOR: TIntegerField
      DisplayLabel = 'C'#211'DIGO FORNECEDOR'
      FieldName = 'ID_FORNECEDOR'
    end
    object Q_pesq_padraoVL_CUSTO: TBCDField
      DisplayLabel = 'VALOR CUSTO'
      FieldName = 'VL_CUSTO'
      Precision = 11
      Size = 2
    end
    object Q_pesq_padraoVL_VENDA: TBCDField
      DisplayLabel = 'VALOR VENDA'
      FieldName = 'VL_VENDA'
      Precision = 11
      Size = 2
    end
    object Q_pesq_padraoESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Precision = 11
      Size = 2
    end
    object Q_pesq_padraoESTOQUE_MIN: TBCDField
      DisplayLabel = 'ESTOQUE MIN'
      FieldName = 'ESTOQUE_MIN'
      Precision = 11
      Size = 2
    end
    object Q_pesq_padraoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object Q_pesq_padraoCADASTRO: TWideStringField
      FieldName = 'CADASTRO'
      Size = 10
    end
  end
  object frxReport: TfrxReport
    Version = '2026.1.4'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection, pbWatermarks]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 46019.887934571800000000
    ReportOptions.LastChange = 46019.888393888900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 512
    Top = 344
    Datasets = <
      item
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
      end>
    Variables = <>
    Style = <>
    Watermarks = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 98.267781200000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 185.007995769688000000
          Top = 37.795300000000000000
          Width = 370.393920570000000000
          Height = 22.677181200000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE CLIENTES DO SISTEMA')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 139.842610000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 0.000001590000000000
          Top = 18.897653260000000000
          Width = 86.929183100000000000
          Height = 15.118114040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Top = 18.897650000000000000
          Width = 222.992263100000000000
          Height = 15.118114040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'NOME')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 551.811380000000000000
          Top = 18.897650000000000000
          Width = 188.976493100000000000
          Height = 15.118114040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'DATA')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 309.921460000000000000
          Top = 18.897650000000000000
          Width = 241.889913100000000000
          Height = 15.118114040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'UNIDADE')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 234.330860000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
        RowCount = 0
        object MemofrxDBDatasetID_PRODUTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 86.929190000000000000
          Height = 22.677180000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'ID_PRODUTO'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset."ID_PRODUTO"]')
          ParentFont = False
        end
        object MemofrxDBDatasetPRODUTO_DESCRICAO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 86.929190000000000000
          Width = 222.992270000000000000
          Height = 22.677180000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'PRODUTO_DESCRICAO'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset."PRODUTO_DESCRICAO"]')
          ParentFont = False
        end
        object MemofrxDBDatasetUNIDADE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 309.921460000000000000
          Width = 241.889920000000000000
          Height = 22.677180000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'UNIDADE'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset."UNIDADE"]')
          ParentFont = False
        end
        object MemofrxDBDatasetCADASTRO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 551.811380000000000000
          Width = 188.976500000000000000
          Height = 22.677180000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'CADASTRO'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset."CADASTRO"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset: TfrxDBDataset
    UserName = 'frxDBDataset'
    CloseDataSource = False
    DataSet = Q_pesq_padrao
    BCDToCurrency = False
    DataSetOptions = []
    Left = 512
    Top = 472
    FieldDefs = <
      item
        FieldName = 'ID_PRODUTO'
      end
      item
        FieldName = 'PRODUTO_DESCRICAO'
        FieldType = fftString
        Size = 30
      end
      item
        FieldName = 'ID_FORNECEDOR'
      end
      item
        FieldName = 'VL_CUSTO'
      end
      item
        FieldName = 'VL_VENDA'
      end
      item
        FieldName = 'ESTOQUE'
      end
      item
        FieldName = 'ESTOQUE_MIN'
      end
      item
        FieldName = 'UNIDADE'
        FieldType = fftString
      end
      item
        FieldName = 'CADASTRO'
        FieldType = fftString
      end>
  end
end
