unit Siswa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids,
  ComCtrls;

type
  TForm3 = class(TForm)
    lbll1: TLabel;
    lbll2: TLabel;
    lbll3: TLabel;
    Edt1: TEdit;
    Edt2: TEdit;
    btnb1: TButton;
    btnb2: TButton;
    btnb3: TButton;
    btnb4: TButton;
    btnb5: TButton;
    dbgrddg1: TDBGrid;
    cbb1: TComboBox;
    btnb6: TButton;
    ds1: TDataSource;
    con1: TZConnection;
    zqry1: TZQuery;
    frxDBreportt: TfrxDBDataset;
    frxreportt: TfrxReport;
    procedure editbersih;
    procedure editenable;
    procedure posisiawal;
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn6Click(Sender: TObject);
    procedure btnb1Click(Sender: TObject);
    procedure btnb2Click(Sender: TObject);
    procedure btnb3Click(Sender: TObject);
    procedure btnb4Click(Sender: TObject);
    procedure btnb5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  id : string;

implementation

{$R *.dfm}

procedure TForm3.editbersih;
begin
Edt1.Clear;
Edt2.Clear;
cbb1.text := '';
end;

procedure TForm3.editenable;
begin
Edt1.Enabled:= True;
Edt2.Enabled:= True;
cbb1.Enabled:= True;
end;

procedure TForm3.posisiawal;
begin
editbersih;

edt1.Enabled:= False;
edt2.Enabled:= False;
cbb1.Enabled:= False;

btnb1.Enabled:= True;
btnb2.Enabled:= False;
btnb3.Enabled:= False;
btnb4.Enabled:= False;
btnb5.Enabled:= False;
end;

procedure TForm3.dbgrd1CellClick(Column: TColumn);
begin
editenable;
btnb1.Enabled:= true;
btnb2.Enabled:= False;
btnb3.Enabled:= True;
btnb4.Enabled:= True;
btnb5.Enabled:= True;
id:=zqry1.Fields[0].AsString;
Edt1.Text:= zqry1.FieldList[1].AsString;
Edt2.Text:= zqry1.FieldList[2].AsString;
cbb1.Text:= zqry1.FieldList[3].AsString;
end;

procedure TForm3.btn6Click(Sender: TObject);
begin
frxreportt.ShowReport();
end;


procedure TForm3.btnb1Click(Sender: TObject);
begin
editbersih;

btnb1.Enabled:= false;
btnb2.Enabled:= True;
btnb3.Enabled:= False;
btnb4.Enabled:= False;
btnb5.Enabled:= True;

editenable;
end;

procedure TForm3.btnb2Click(Sender: TObject);
begin
if (Edt1.Text= '')or (Edt2.Text ='')or(cbb1.Text= '')then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
if (zqry1.Locate('nama',Edt1.Text,[])) and (zqry1.Locate('jenis',Edt2.Text,[])) then
begin
ShowMessage('DATA KELAS SUDAH DIGUNAKAN');
posisiawal;
end else

begin
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into tabel_kelas values (null,"'+Edt1.Text+'","'+Edt2.Text+'","'+cbb1.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_kelas');
zqry1.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;

end;
end;

procedure TForm3.btnb3Click(Sender: TObject);
begin
if (Edt1.Text= '')or (Edt2.Text ='')or(cbb1.Text= '')then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (Edt1.Text = zqry1.Fields[1].AsString) and (Edt2.Text = zqry1.Fields[2].AsString) and (cbb1.Text = zqry1.Fields[3].AsString)then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawal;
end else
begin
id:=dbgrddg1.DataSource.DataSet.FieldByName('id_kelas').AsString;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
zqry1.SQL.Clear;
zqry1.SQL.Add('Update tabel_kelas set nama= "'+Edt1.Text+'",jenis="'+Edt2.Text+'" where id_kelas="'+id+'"');
zqry1. ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_kelas');
zqry1.Open;
posisiawal;
end;
end;

procedure TForm3.btnb4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dbgrddg1.DataSource.DataSet.FieldByName('id_kelas').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from tabel_kelas where id_kelas="'+id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_kelas');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;
end;
end;

procedure TForm3.btnb5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
posisiawal;
end;

end.
