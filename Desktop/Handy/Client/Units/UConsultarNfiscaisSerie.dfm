object FConsultarNFiscaisSerie: TFConsultarNFiscaisSerie
  Left = 272
  Top = 191
  Width = 734
  Height = 398
  Caption = 'Consultar Notas Fiscais'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 726
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 41
      Height = 13
      Caption = 'Nr. Serie'
    end
    object edSerie: TRzEdit
      Left = 64
      Top = 24
      Width = 449
      Height = 21
      TabOrder = 0
      OnChange = edSerieChange
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 73
    Width = 726
    Height = 268
    Align = alClient
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'NR_SERIE_ITEM'
        Title.Caption = 'N'#250'mero de S'#233'rie'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO_NFISCAL'
        Title.Caption = 'Nota Fiscal'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_CLIENTE'
        Title.Caption = 'Cliente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTEMISSAO_NFISCAL'
        Title.Caption = 'Dt Emiss'#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO_NFE'
        Title.Caption = 'Numero NFe'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 341
    Width = 726
    Height = 30
    Align = alBottom
    TabOrder = 2
    object bbFechar: TBitBtn
      Left = 647
      Top = 2
      Width = 75
      Height = 25
      Cancel = True
      Caption = '&Fechar'
      ModalResult = 2
      TabOrder = 0
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
        F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
        000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
        338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
        45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
        3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
        F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
        000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
        338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
        4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
        8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
        333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
        0000}
      NumGlyphs = 2
    end
  end
  object DataSource1: TDataSource
    Left = 424
    Top = 120
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 100
    Left = 488
    Top = 120
  end
end
