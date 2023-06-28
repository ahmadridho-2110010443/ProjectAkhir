unit menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm1 = class(TForm)
    mm1: TMainMenu;
    PilihTabel1: TMenuItem;
    N1TabelOrtu1: TMenuItem;
    N2TabelSiswa1: TMenuItem;
    Opsi1: TMenuItem;
    Keluar1: TMenuItem;
    N3TabelKelas1: TMenuItem;
    procedure N1TabelOrtu1Click(Sender: TObject);
    procedure N3TabelKelas1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Ortu, Siswa;

{$R *.dfm}

procedure TForm1.N1TabelOrtu1Click(Sender: TObject);
begin
form2.Showmodal();
end;

procedure TForm1.N3TabelKelas1Click(Sender: TObject);
begin
Form3.ShowModal();
end;

end.
