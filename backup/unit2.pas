unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;

implementation
uses unit1;

{$R *.lfm}

{ TForm2 }

procedure TForm2.Button1Click(Sender: TObject);
var
  text1, text2, text3, text4, text5:string;

begin
   text1:=(edit1.text);
   text2:=(edit2.text);
   text3:=(edit3.text);
   text4:=(edit4.text);
   text5:=(edit5.text);
   form1.listbox1.Items.Add(text1);
   form1.listbox2.Items.Add(text2);
   form1.listbox3.Items.Add(text3);
   form1.listbox4.Items.Add(text4);
   form1.listbox5.Items.Add(text5);
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  close;
end;

end.

