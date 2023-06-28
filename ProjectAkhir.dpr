program ProjectAkhir;

uses
  Forms,
  menu in 'menu.pas' {Form1},
  Ortu in 'Ortu.pas' {Form2},
  Siswa in 'Siswa.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
