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
    frxlapor: TfrxReport;
    frxDBlaporan: TfrxDBDataset;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    Edt7: TEdit;
    cbb1: TComboBox;
    cbb2: TComboBox;
    cbb3: TComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

end.
