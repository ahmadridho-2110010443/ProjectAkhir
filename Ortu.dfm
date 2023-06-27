object Form2: TForm2
  Left = 192
  Top = 125
  Width = 870
  Height = 494
  Caption = 'Form Ortu'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 8
    Top = 8
    Width = 26
    Height = 19
    Caption = 'NIK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 8
    Top = 40
    Width = 93
    Height = 19
    Caption = 'NAMA ORTU'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 8
    Top = 72
    Width = 86
    Height = 19
    Caption = 'PEKERJAAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 8
    Top = 104
    Width = 94
    Height = 19
    Caption = 'PENDIDIKAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 8
    Top = 136
    Width = 68
    Height = 19
    Caption = 'TELEPON'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 392
    Top = 8
    Width = 113
    Height = 19
    Caption = 'JENIS KELAMIN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 392
    Top = 40
    Width = 63
    Height = 19
    Caption = 'ALAMAT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl8: TLabel
    Left = 392
    Top = 72
    Width = 60
    Height = 19
    Caption = 'STATUS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object dbgrd1: TDBGrid
    Left = 8
    Top = 208
    Width = 745
    Height = 185
    Color = clInfoBk
    DataSource = ds1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Edt1: TEdit
    Left = 184
    Top = 8
    Width = 177
    Height = 21
    Color = clMenu
    TabOrder = 1
  end
  object btn1: TButton
    Left = 40
    Top = 176
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 2
  end
  object Edt2: TEdit
    Left = 184
    Top = 40
    Width = 177
    Height = 21
    TabOrder = 3
  end
  object Edt3: TEdit
    Left = 184
    Top = 72
    Width = 177
    Height = 21
    TabOrder = 4
  end
  object Edt5: TEdit
    Left = 184
    Top = 136
    Width = 177
    Height = 21
    TabOrder = 5
  end
  object btn2: TButton
    Left = 136
    Top = 176
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 6
  end
  object btn3: TButton
    Left = 232
    Top = 176
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 7
  end
  object btn4: TButton
    Left = 328
    Top = 176
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 8
  end
  object btn5: TButton
    Left = 424
    Top = 176
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 9
  end
  object Edt7: TEdit
    Left = 568
    Top = 40
    Width = 177
    Height = 21
    TabOrder = 10
  end
  object cbb1: TComboBox
    Left = 568
    Top = 8
    Width = 177
    Height = 21
    ItemHeight = 13
    TabOrder = 11
  end
  object cbb2: TComboBox
    Left = 184
    Top = 104
    Width = 177
    Height = 21
    ItemHeight = 13
    TabOrder = 12
    Items.Strings = (
      'SD'
      'SMP'
      'SMA'
      'S1'
      'S2')
  end
  object cbb3: TComboBox
    Left = 568
    Top = 72
    Width = 177
    Height = 21
    ItemHeight = 13
    TabOrder = 13
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'sekolah'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Program Files (x86)\Borland\Delphi7\Projects\koneksi\libmysql' +
      '.dll'
    Left = 40
    Top = 400
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 184
    Top = 400
  end
  object zqry1: TZQuery
    Connection = con1
    SQL.Strings = (
      'select * from tbl_ortu')
    Params = <>
    Left = 112
    Top = 400
  end
  object frxlapor: TfrxReport
    Version = '4.12.6'
    DataSet = frxDBlaporan
    DataSetName = 'frxDBlaporan'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45100.703932048600000000
    ReportOptions.LastChange = 45100.703932048600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 336
    Top = 400
    Datasets = <
      item
        DataSet = frxDBlaporan
        DataSetName = 'frxDBlaporan'
      end>
    Variables = <>
    Style = <>
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
      object ReportTitle1: TfrxReportTitle
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
      end
      object MasterData1: TfrxMasterData
        Height = 26.456710000000000000
        Top = 147.401670000000000000
        Width = 740.409927000000000000
        DataSet = frxDBlaporan
        DataSetName = 'frxDBlaporan'
        RowCount = 0
        object Memo7: TfrxMemoView
          Left = 22.677180000000000000
          Top = 7.559060000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBlaporan
          DataSetName = 'frxDBlaporan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[line]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 56.692950000000000000
          Top = 7.559060000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nmkustomer'
          DataSet = frxDBlaporan
          DataSetName = 'frxDBlaporan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBlaporan."nmkustomer"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 185.196970000000000000
          Top = 7.559060000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'telp'
          DataSet = frxDBlaporan
          DataSetName = 'frxDBlaporan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBlaporan."telp"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 313.700990000000000000
          Top = 7.559060000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'alamat'
          DataSet = frxDBlaporan
          DataSetName = 'frxDBlaporan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBlaporan."alamat"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 453.543600000000000000
          Top = 7.559060000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'kota'
          DataSet = frxDBlaporan
          DataSetName = 'frxDBlaporan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBlaporan."kota"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 597.165740000000000000
          Top = 7.559060000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'kodepos'
          DataSet = frxDBlaporan
          DataSetName = 'frxDBlaporan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBlaporan."kodepos"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 22.677180000000000000
        Top = 64.252010000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 22.677180000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Id')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 56.692950000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama Kustomer')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 185.196970000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Telp')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 313.700990000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Alamat')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 453.543600000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Kota')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 597.165740000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Kodepos')
          ParentFont = False
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
    end
  end
  object frxDBlaporan: TfrxDBDataset
    UserName = 'frxDBlaporan'
    CloseDataSource = False
    DataSet = zqry1
    BCDToCurrency = False
    Left = 256
    Top = 400
  end
end
