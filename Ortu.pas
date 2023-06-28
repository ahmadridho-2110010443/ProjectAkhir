unit Ortu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, frxClass, frxDBSet, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, Grids,
  DBGrids;

type
  TForm2 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    dbgrd1: TDBGrid;
    Edt1: TEdit;
    btn1: TButton;
    Edt2: TEdit;
    Edt3: TEdit;
    Edt5: TEdit;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    con1: TZConnection;
    ds1: TDataSource;
    zqry1: TZQuery;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    Edt7: TEdit;
    cbb1: TComboBox;
    cbb3: TComboBox;
    btn6: TButton;
    Edt4: TEdit;
    lbl9: TLabel;
    Edt6: TEdit;
    frxDBreport: TfrxDBDataset;
    frxReport: TfrxReport;
    procedure editbersih;
    procedure editenable;
    procedure posisiawal;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  id : string;

implementation

{$R *.dfm}

procedure TForm2.editbersih;
begin
Edt1.Clear;
Edt2.Clear;
Edt3.Clear;
Edt4.Clear;
Edt5.Clear;
Edt6.Clear;
cbb1.text:= '';
Edt7.Clear;
cbb3.Text:= '';
end;

procedure TForm2.editenable;
begin
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
edt5.Enabled:= True;
edt6.Enabled:= True;
cbb1.Enabled:= True;
edt7.Enabled:= True;
cbb3.Enabled:= True;
end;

procedure TForm2.posisiawal;
begin
editbersih;

Edt1.Enabled:= false;
Edt2.Enabled:= false;
Edt3.Enabled:= false;
Edt4.Enabled:= false;
Edt5.Enabled:= false;
Edt6.Enabled:= false;
cbb1.Enabled:= false;
Edt7.Enabled:= false;
cbb3.Enabled:= false;

btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= False;
end;

procedure TForm2.btn1Click(Sender: TObject);
begin
editbersih;

btn1.Enabled:= false;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;

editenable;
end;

procedure TForm2.btn2Click(Sender: TObject);
begin
if (Edt1.Text= '')or (Edt2.Text ='') or (Edt3.Text= '')or (Edt4.Text ='') or (Edt5.Text= '')or (Edt6.Text ='') or (cbb1.Text= '') or (Edt7.Text= '') or (cbb3.Text= '')then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
if (zqry1.Locate('nik',Edt1.Text,[])) and (zqry1.Locate('nama',Edt2.Text,[])) then
begin
ShowMessage('DATA ORANG TUA SUDAH DIGUNAKAN');
posisiawal;
end else
begin
//simpan
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into tabel_ortu values (null,"'+Edt1.Text+'","'+Edt2.Text+'","'+Edt3.Text+'","'+Edt4.Text+'","'+Edt5.Text+'","'+Edt6.Text+'","'+cbb1.Text+'","'+Edt7.Text+'","'+cbb3.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_ortu');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
posisiawal;

end;
end;

procedure TForm2.btn3Click(Sender: TObject);
begin
if (Edt1.Text= '')or (Edt2.Text ='') or (Edt3.Text= '')or (Edt4.Text ='') or (Edt5.Text= '')or (Edt6.Text ='') or (cbb1.Text= '')or (Edt7.Text= '')or (cbb3.Text= '')then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (Edt1.Text = zqry1.Fields[1].AsString) and (Edt2.Text = zqry1.Fields[2].AsString) and (Edt3.Text = zqry1.Fields[3].AsString) and (Edt4.Text = zqry1.Fields[4].AsString) and (Edt5.Text = zqry1.Fields[5].AsString) and (Edt6.Text = zqry1.Fields[6].AsString)and (cbb1.Text = zqry1.Fields[7].AsString) and (Edt7.Text = zqry1.Fields[8].AsString) and (cbb3.Text = zqry1.Fields[9].AsString) then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawal;
end else
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id_ortu').AsString;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
zqry1.SQL.Clear;
zqry1.SQL.Add('Update tabel_ortu set nik= "'+Edt1.Text+'",nama="'+Edt2.Text+'",pendidikan="'+Edt3.Text+'",pekerjaan="'+Edt4.Text+'",telp="'+Edt5.Text+'",alamat="'+Edt6.Text+'",jenis_kelamin="'+cbb1.Text+'",agama="'+Edt7.Text+'",status="'+cbb3.Text+'" where id_ortu="'+id+'"');
zqry1. ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_ortu');
zqry1.Open;
posisiawal;
end;
end;

procedure TForm2.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id_ortu').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from tabel_ortu where id_ortu="'+id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_ortu');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;
end;
end;

procedure TForm2.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm2.dbgrd1CellClick(Column: TColumn);
begin
editenable;
btn1.Enabled:= true;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;
id:=zqry1.Fields[0].AsString;
Edt1.Text:= zqry1.FieldList[1].AsString;
Edt2.Text:= zqry1.FieldList[2].AsString;
Edt3.Text:= zqry1.FieldList[3].AsString;
Edt4.Text:= zqry1.FieldList[4].AsString;
Edt5.Text:= zqry1.FieldList[5].AsString;
Edt6.Text:= zqry1.FieldList[6].AsString;
cbb1.Text:= zqry1.FieldList[7].AsString;
Edt7.Text:= zqry1.FieldList[8].AsString;
cbb3.Text:= zqry1.FieldList[9].AsString;
end;

end.
