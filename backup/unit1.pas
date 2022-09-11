unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls, Unit2;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    ListBox1: TListBox;
    ListBox2: TListBox;
    ListBox3: TListBox;
    ListBox4: TListBox;
    ListBox5: TListBox;

    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private

  public
   tform,tform2:integer;

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  form2.ShowModal;
end;

procedure TForm1.Button2Click(Sender: TObject);


begin
  listbox1.Items.Delete(1);
  listbox2.Items.Delete(1);
  listbox3.Items.Delete(1);
  listbox4.Items.Delete(1);
  listbox5.Items.Delete(1);

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  try
  listbox1.items.savetofile('C:\Users\Public\Documents\SaveDate1.txt');
  listbox2.items.savetofile('C:\Users\Public\Documents\SaveDate2.txt');
  listbox3.items.savetofile('C:\Users\Public\Documents\SaveDate3.txt');
  listbox4.items.savetofile('C:\Users\Public\Documents\SaveDate4.txt');
  listbox5.items.savetofile('C:\Users\Public\Documents\SaveDate5.txt');
  finally
    ShowMessage('Die Datei wurden gespeichert');
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  listbox1.Enabled:=true;
  listbox2.Enabled:=true;
  listbox3.Enabled:=true;
  listbox4.Enabled:=true;
  listbox5.Enabled:=true;
  Showmessage('Bearbeitungsmodus aktiviert');
  label2.visible:=true;
  ShowMessage('Um Bearbeitungsmodus zu deaktivieren drücken Sie diese Knopf');
  label2.visible:=false;
  button6.visible:=true;

end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  try
  listbox1.items.loadfromfile('C:\Users\Praktikant\Desktop\Dimitri.Larkin\Adressverwaltung\Speicher\daten1.txt');
  listbox2.items.loadfromfile('C:\Users\Praktikant\Desktop\Dimitri.Larkin\Adressverwaltung\Speicher\daten2.txt');
  listbox3.items.loadfromfile('C:\Users\Praktikant\Desktop\Dimitri.Larkin\Adressverwaltung\Speicher\daten3.txt');
  listbox4.items.loadfromfile('C:\Users\Praktikant\Desktop\Dimitri.Larkin\Adressverwaltung\Speicher\daten4.txt');
  listbox5.items.loadfromfile('C:\Users\Praktikant\Desktop\Dimitri.Larkin\Adressverwaltung\Speicher\daten5.txt');
  finally
    ShowMessage('Die Datei wurden geladen');
  end;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  button6.visible:=false;
  listbox1.Enabled:=false;
  listbox2.Enabled:=false;
  listbox3.Enabled:=false;
  listbox4.Enabled:=false;
  listbox5.Enabled:=false;
end;

end.

