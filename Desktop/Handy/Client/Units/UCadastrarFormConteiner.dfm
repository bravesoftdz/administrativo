inherited FCadastrarFormConteiner: TFCadastrarFormConteiner
  Left = 357
  Top = 160
  Caption = 'Cadastrar Conteiner'
  ClientHeight = 425
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 268
    Top = 8
    Width = 44
    Height = 13
    Alignment = taRightJustify
    Caption = 'Remessa'
  end
  object Label3: TLabel [1]
    Left = 245
    Top = 72
    Width = 68
    Height = 13
    Alignment = taRightJustify
    Caption = 'Conhecimento'
  end
  object Label4: TLabel [2]
    Left = 7
    Top = 104
    Width = 58
    Height = 13
    Alignment = taRightJustify
    Caption = 'Observa'#231#227'o'
  end
  object Label2: TLabel [3]
    Left = 46
    Top = 8
    Width = 75
    Height = 13
    Alignment = taRightJustify
    Caption = 'Invoice Number'
  end
  object Label5: TLabel [4]
    Left = 269
    Top = 40
    Width = 43
    Height = 13
    Alignment = taRightJustify
    Caption = 'Chegada'
  end
  inherited Panel1: TPanel
    Top = 395
    TabOrder = 7
  end
  object dtpRemessa: TDateTimePicker
    Left = 320
    Top = 8
    Width = 89
    Height = 21
    Date = 39262.655975625000000000
    Time = 39262.655975625000000000
    TabOrder = 1
  end
  object dtpChegada: TDateTimePicker
    Left = 320
    Top = 40
    Width = 89
    Height = 21
    Hint = 'Chegada'
    Date = 39262.655975625000000000
    Time = 39262.655975625000000000
    TabOrder = 2
  end
  object mmObservacao: TMemo
    Left = 0
    Top = 125
    Width = 536
    Height = 64
    Align = alBottom
    TabOrder = 5
  end
  object rgTipo: TRadioGroup
    Left = 72
    Top = 56
    Width = 161
    Height = 41
    Caption = 'Tipo de Envio'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'A'#233'reo'
      'Mar'#237'timo')
    TabOrder = 4
  end
  object Panel2: TPanel
    Left = 0
    Top = 189
    Width = 536
    Height = 206
    Align = alBottom
    TabOrder = 6
    object sgItens: TStringGrid
      Left = 1
      Top = 26
      Width = 534
      Height = 179
      Align = alClient
      ColCount = 4
      DefaultRowHeight = 20
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing, goTabs]
      TabOrder = 1
      OnDblClick = sgItensDblClick
      OnDrawCell = sgItensDrawCell
      RowHeights = (
        20
        20
        20
        20
        20)
    end
    object ToolBar2: TToolBar
      Left = 1
      Top = 1
      Width = 534
      Height = 25
      AutoSize = True
      ButtonHeight = 21
      Caption = 'ToolBar1'
      TabOrder = 0
      object sbNovoItem: TSpeedButton
        Left = 0
        Top = 2
        Width = 28
        Height = 21
        Hint = 'Novo (Ctrl + N)'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
          333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
          0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
          0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
          33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
          B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
          3BB33773333773333773B333333B3333333B7333333733333337}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = sbNovoItemClick
      end
      object sbEditarItem: TSpeedButton
        Left = 28
        Top = 2
        Width = 28
        Height = 21
        Hint = 'Editar (Ctrl + E)'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
          000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
          00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
          F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
          0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
          FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
          FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
          0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
          00333377737FFFFF773333303300000003333337337777777333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = sbEditarItemClick
      end
      object sbApagarItem: TSpeedButton
        Left = 56
        Top = 2
        Width = 28
        Height = 21
        Hint = 'Excluir (Ctrl + X)'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
          555557777F777555F55500000000555055557777777755F75555005500055055
          555577F5777F57555555005550055555555577FF577F5FF55555500550050055
          5555577FF77577FF555555005050110555555577F757777FF555555505099910
          555555FF75777777FF555005550999910555577F5F77777775F5500505509990
          3055577F75F77777575F55005055090B030555775755777575755555555550B0
          B03055555F555757575755550555550B0B335555755555757555555555555550
          BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
          50BB555555555555575F555555555555550B5555555555555575}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = sbApagarItemClick
      end
      object cbProdutos: TCheckBox
        Left = 84
        Top = 2
        Width = 69
        Height = 21
        Caption = 'Produtos'
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = cbProdutosClick
      end
      object cbPecas: TCheckBox
        Left = 153
        Top = 2
        Width = 56
        Height = 21
        Caption = 'Pe'#231'as'
        Checked = True
        State = cbChecked
        TabOrder = 1
        OnClick = cbProdutosClick
      end
    end
  end
  object edConhecimento: TRzEdit
    Left = 320
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object edInvoiceNumber: TRzEdit
    Left = 128
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
  end
end
