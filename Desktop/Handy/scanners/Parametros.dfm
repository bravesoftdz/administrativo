object FParametros: TFParametros
  Left = 461
  Top = 220
  Width = 493
  Height = 437
  BorderStyle = bsSizeToolWin
  Caption = 'Par'#226'metros'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RzGroupBox1: TRzGroupBox
    Left = 0
    Top = 0
    Width = 485
    Height = 193
    Align = alTop
    Caption = 'E-mail'
    GroupStyle = gsBanner
    TabOrder = 0
    object Label2: TLabel
      Left = 99
      Top = 128
      Width = 22
      Height = 13
      Alignment = taRightJustify
      Caption = 'Host'
    end
    object Label1: TLabel
      Left = 273
      Top = 128
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'Porta'
    end
    object Label3: TLabel
      Left = 85
      Top = 160
      Width = 36
      Height = 13
      Alignment = taRightJustify
      Caption = 'Usu'#225'rio'
    end
    object Label4: TLabel
      Left = 267
      Top = 160
      Width = 31
      Height = 13
      Alignment = taRightJustify
      Caption = 'Senha'
    end
    object Label7: TLabel
      Left = 93
      Top = 96
      Width = 28
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nome'
    end
    object Label8: TLabel
      Left = 270
      Top = 96
      Width = 28
      Height = 13
      Alignment = taRightJustify
      Caption = 'E-mail'
    end
    object Label9: TLabel
      Left = 37
      Top = 32
      Width = 84
      Height = 13
      Alignment = taRightJustify
      Caption = 'Assunto do E-mail'
    end
    object Label10: TLabel
      Left = 47
      Top = 64
      Width = 74
      Height = 13
      Alignment = taRightJustify
      Caption = 'Corpo do E-mail'
    end
    object edtHost: TRzDBEdit
      Left = 128
      Top = 128
      Width = 121
      Height = 21
      DataSource = dsParametros
      DataField = 'emailHost'
      FrameHotTrack = True
      FrameVisible = True
      TabOrder = 4
    end
    object edtUsuario: TRzDBEdit
      Left = 128
      Top = 160
      Width = 121
      Height = 21
      DataSource = dsParametros
      DataField = 'emailUsuario'
      FrameHotTrack = True
      FrameVisible = True
      TabOrder = 6
    end
    object edtPorta: TRzDBEdit
      Left = 304
      Top = 128
      Width = 121
      Height = 21
      DataSource = dsParametros
      DataField = 'emailPorta'
      FrameHotTrack = True
      FrameVisible = True
      TabOrder = 5
    end
    object edtSenha: TRzDBEdit
      Left = 304
      Top = 160
      Width = 121
      Height = 21
      DataSource = dsParametros
      DataField = 'emailSenha'
      FrameHotTrack = True
      FrameVisible = True
      PasswordChar = '*'
      TabOrder = 7
    end
    object edtNome: TRzDBEdit
      Left = 128
      Top = 96
      Width = 121
      Height = 21
      DataSource = dsParametros
      DataField = 'emailNome'
      FrameHotTrack = True
      FrameVisible = True
      TabOrder = 2
    end
    object edtEndereco: TRzDBEdit
      Left = 304
      Top = 96
      Width = 121
      Height = 21
      DataSource = dsParametros
      DataField = 'emailEndereco'
      FrameHotTrack = True
      FrameVisible = True
      TabOrder = 3
    end
    object edtAssuntoEmail: TRzDBEdit
      Left = 128
      Top = 32
      Width = 297
      Height = 21
      Hint = 
        'utilize '#39'%NOME%'#39' para o nome do usu'#225'rio ou'#13#39'%CODIGO%'#39' para o c'#243'd' +
        'igo do usu'#225'rio'
      DataSource = dsParametros
      DataField = 'emailAssunto'
      FrameHotTrack = True
      FrameVisible = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object edtCorpoEmail: TRzDBEdit
      Left = 128
      Top = 64
      Width = 297
      Height = 21
      Hint = 
        'utilize '#39'%NOME%'#39' para o nome do usu'#225'rio ou'#13#39'%CODIGO%'#39' para o c'#243'd' +
        'igo do usu'#225'rio'
      DataSource = dsParametros
      DataField = 'emailCorpo'
      FrameHotTrack = True
      FrameVisible = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
  end
  object RzGroupBox2: TRzGroupBox
    Left = 0
    Top = 193
    Width = 485
    Height = 72
    Align = alTop
    Caption = 'Impressora'
    GroupStyle = gsBanner
    TabOrder = 1
    object Label6: TLabel
      Left = 29
      Top = 32
      Width = 87
      Height = 13
      Caption = 'Impressora padr'#227'o'
    end
    object cmbImpressoras: TRzDBComboBox
      Left = 128
      Top = 32
      Width = 257
      Height = 21
      DataField = 'impressoraPadrao'
      DataSource = dsParametros
      Ctl3D = False
      FlatButtons = True
      FrameHotTrack = True
      FrameVisible = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 0
    end
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 362
    Width = 485
    Height = 41
    Align = alBottom
    BorderOuter = fsNone
    TabOrder = 3
    object btnConfirmar: TRzBitBtn
      Left = 320
      Top = 8
      Default = True
      Caption = 'Confirmar'
      HotTrack = True
      TabOrder = 0
      OnClick = btnConfirmarClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000630B0000630B00000001000000000000000000003300
        00006600000099000000CC000000FF0000000033000033330000663300009933
        0000CC330000FF33000000660000336600006666000099660000CC660000FF66
        000000990000339900006699000099990000CC990000FF99000000CC000033CC
        000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
        0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
        330000333300333333006633330099333300CC333300FF333300006633003366
        33006666330099663300CC663300FF6633000099330033993300669933009999
        3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
        330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
        66006600660099006600CC006600FF0066000033660033336600663366009933
        6600CC336600FF33660000666600336666006666660099666600CC666600FF66
        660000996600339966006699660099996600CC996600FF99660000CC660033CC
        660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
        6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
        990000339900333399006633990099339900CC339900FF339900006699003366
        99006666990099669900CC669900FF6699000099990033999900669999009999
        9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
        990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
        CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
        CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
        CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
        CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
        CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
        FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
        FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
        FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
        FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
        000000808000800000008000800080800000C0C0C00080808000191919004C4C
        4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
        6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8180C
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E2DFE8E8E8E8E8E8E8E8E8E8E8E8E8181212
        0CE8E8E8E8E8E8E8E8E8E8E8E8E28181DFE8E8E8E8E8E8E8E8E8E8E818121212
        120CE8E8E8E8E8E8E8E8E8E8E281818181DFE8E8E8E8E8E8E8E8E81812121212
        12120CE8E8E8E8E8E8E8E8E2818181818181DFE8E8E8E8E8E8E8E81812120C18
        1212120CE8E8E8E8E8E8E8E28181DFE2818181DFE8E8E8E8E8E8E818120CE8E8
        181212120CE8E8E8E8E8E8E281DFE8E8E2818181DFE8E8E8E8E8E8180CE8E8E8
        E8181212120CE8E8E8E8E8E2DFE8E8E8E8E2818181DFE8E8E8E8E8E8E8E8E8E8
        E8E8181212120CE8E8E8E8E8E8E8E8E8E8E8E2818181DFE8E8E8E8E8E8E8E8E8
        E8E8E8181212120CE8E8E8E8E8E8E8E8E8E8E8E2818181DFE8E8E8E8E8E8E8E8
        E8E8E8E81812120CE8E8E8E8E8E8E8E8E8E8E8E8E28181DFE8E8E8E8E8E8E8E8
        E8E8E8E8E818120CE8E8E8E8E8E8E8E8E8E8E8E8E8E281DFE8E8E8E8E8E8E8E8
        E8E8E8E8E8E8180CE8E8E8E8E8E8E8E8E8E8E8E8E8E8E2DFE8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
    end
    object btnCancelar: TRzBitBtn
      Left = 400
      Top = 8
      Cancel = True
      Caption = 'Cancelar'
      HotTrack = True
      TabOrder = 1
      OnClick = btnCancelarClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000630B0000630B00000001000000000000000000003300
        00006600000099000000CC000000FF0000000033000033330000663300009933
        0000CC330000FF33000000660000336600006666000099660000CC660000FF66
        000000990000339900006699000099990000CC990000FF99000000CC000033CC
        000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
        0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
        330000333300333333006633330099333300CC333300FF333300006633003366
        33006666330099663300CC663300FF6633000099330033993300669933009999
        3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
        330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
        66006600660099006600CC006600FF0066000033660033336600663366009933
        6600CC336600FF33660000666600336666006666660099666600CC666600FF66
        660000996600339966006699660099996600CC996600FF99660000CC660033CC
        660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
        6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
        990000339900333399006633990099339900CC339900FF339900006699003366
        99006666990099669900CC669900FF6699000099990033999900669999009999
        9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
        990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
        CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
        CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
        CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
        CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
        CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
        FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
        FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
        FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
        FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
        000000808000800000008000800080800000C0C0C00080808000191919004C4C
        4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
        6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8B46C6C6CE8
        E8E8E8E8B46C6C6CE8E8E8E2DFDFDFE8E8E8E8E8E2DFDFDFE8E8E8B49090906C
        E8E8E8B49090906CE8E8E8E2818181DFE8E8E8E2818181DFE8E8E8E8B4909090
        6CE8B49090906CE8E8E8E8E8E2818181DFE8E2818181DFE8E8E8E8E8E8B49090
        906C9090906CE8E8E8E8E8E8E8E2818181DF818181DFE8E8E8E8E8E8E8E8B490
        909090906CE8E8E8E8E8E8E8E8E8E28181818181DFE8E8E8E8E8E8E8E8E8E8B4
        9090906CE8E8E8E8E8E8E8E8E8E8E8E2818181DFE8E8E8E8E8E8E8E8E8E8B490
        909090906CE8E8E8E8E8E8E8E8E8E28181818181DFE8E8E8E8E8E8E8E8B49090
        906C9090906CE8E8E8E8E8E8E8E2818181DF818181DFE8E8E8E8E8E8B4909090
        6CE8B49090906CE8E8E8E8E8E2818181DFE8E2818181DFE8E8E8E8B49090906C
        E8E8E8B49090906CE8E8E8E2818181DFE8E8E8E2818181DFE8E8E8B4B4B4B4E8
        E8E8E8E8B4B4B4B4E8E8E8E2E2E2E2E8E8E8E8E8E2E2E2E2E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
    end
  end
  object RzGroupBox3: TRzGroupBox
    Left = 0
    Top = 265
    Width = 485
    Height = 97
    Align = alClient
    Caption = 'Scanner'
    GroupStyle = gsBanner
    TabOrder = 2
    object Label5: TLabel
      Left = 13
      Top = 32
      Width = 107
      Height = 13
      Caption = 'Scanner a ser utilizado'
    end
    object Label11: TLabel
      Left = 54
      Top = 64
      Width = 67
      Height = 13
      Alignment = taRightJustify
      Caption = 'Ultimo arquivo'
    end
    object cmbScanners: TRzDBComboBox
      Left = 128
      Top = 32
      Width = 257
      Height = 21
      DataField = 'ScannerPadrao'
      DataSource = dsParametros
      Ctl3D = False
      FlatButtons = True
      FrameHotTrack = True
      FrameVisible = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 0
    end
    object edtSequencia: TRzDBEdit
      Left = 128
      Top = 64
      Width = 121
      Height = 21
      DataSource = dsParametros
      DataField = 'sequenciaArquivo'
      FrameHotTrack = True
      FrameVisible = True
      TabOrder = 1
    end
  end
  object dsParametros: TDataSource
    DataSet = FPrincipal.ibParametros
    Left = 24
    Top = 32
  end
end
