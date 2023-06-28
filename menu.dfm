object Form1: TForm1
  Left = 192
  Top = 125
  Width = 870
  Height = 450
  Caption = 'Main Menu'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object mm1: TMainMenu
    Left = 40
    Top = 16
    object PilihTabel1: TMenuItem
      Caption = 'Pilih Tabel'
      object N1TabelOrtu1: TMenuItem
        Caption = '1.Tabel Ortu'
        OnClick = N1TabelOrtu1Click
      end
      object N2TabelSiswa1: TMenuItem
        Caption = '2.Tabel Siswa'
      end
      object N3TabelKelas1: TMenuItem
        Caption = '3.Tabel Kelas'
        OnClick = N3TabelKelas1Click
      end
    end
    object Opsi1: TMenuItem
      Caption = 'Opsi'
      object Keluar1: TMenuItem
        Caption = 'Keluar'
      end
    end
  end
end
