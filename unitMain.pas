unit unitMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    buttonNum0: TButton;
    buttonADD: TButton;
    buttonSUB: TButton;
    buttonMPY: TButton;
    buttonDIV: TButton;
    buttonEQUAL: TButton;
    buttonCE: TButton;
    buttonC: TButton;
    buttonBS: TButton;
    Button10: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure buttonNum0Click(Sender: TObject);
    procedure buttonCEClick(Sender: TObject);
    procedure buttonDIVClick(Sender: TObject);
    procedure buttonMPYClick(Sender: TObject);
    procedure buttonSUBClick(Sender: TObject);
    procedure buttonADDClick(Sender: TObject);
    procedure buttonEQUALClick(Sender: TObject);
    procedure buttonCClick(Sender: TObject);
    procedure buttonBSClick(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    op : char;
    p, q : real;
    startcalc : boolean;
  public
    { Public declarations }

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button10Click(Sender: TObject);
begin
  edit1.Text := edit1.Text + ',';
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  edit1.Text := edit1.Text + '1';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  edit1.Text := edit1.Text + '2';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  edit1.Text := edit1.Text + '3';
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  edit1.Text := edit1.Text + '4';
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  edit1.Text := edit1.Text + '5';
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  edit1.Text := edit1.Text + '6';
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  edit1.Text := edit1.Text + '7';
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  edit1.Text := edit1.Text + '8';
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  edit1.Text := edit1.Text + '9';
end;

procedure TForm1.buttonADDClick(Sender: TObject);
begin
  op := '+';
  p := strtofloat(edit1.Text);
  edit1.Text := '';
end;

procedure TForm1.buttonBSClick(Sender: TObject);
begin
 edit1.Text := copy(edit1.text,1, length(edit1.Text)-1);
end;

procedure TForm1.buttonCClick(Sender: TObject);
begin
  p := 0;
  edit1.Text := '';
  startcalc := true;
end;

procedure TForm1.buttonCEClick(Sender: TObject);
begin
  edit1.Text := '';
end;

procedure TForm1.buttonDIVClick(Sender: TObject);
begin
  op := '/';
  p := strtofloat(edit1.Text);
  edit1.Text := '';
end;

procedure TForm1.buttonEQUALClick(Sender: TObject);
begin
  if (p <> StrToFloat(edit1.Text)) or (startcalc) then
  begin
  q := StrToFloat(edit1.Text);
  if startcalc then
  startcalc := false;
  end
  else
  if q = strtofloat(edit1.Text) then
  q := p;

  case op of
    '+':
    begin
      edit1.Text := FloatToStr(p + q);
      p := StrToFloat(edit1.Text);
    end;
    '-':
    begin
      edit1.Text := FloatToStr(p - q);
      p := StrToFloat(edit1.Text);
    end;
    '/':
    begin
      edit1.Text := FloatToStr(p / q);
      p := StrToFloat(edit1.Text);
    end;
    '*':
    begin
      edit1.Text := FloatToStr(p * q);
      p := StrToFloat(edit1.Text);
    end;
  end;
end;

procedure TForm1.buttonMPYClick(Sender: TObject);
begin
  op := '*';
  p := strtofloat(edit1.Text);
  edit1.Text := '';
end;

procedure TForm1.buttonNum0Click(Sender: TObject);
begin
  edit1.Text := edit1.Text + '0';
end;

procedure TForm1.buttonSUBClick(Sender: TObject);
begin
  op := '-';
  p := strtofloat(edit1.Text);
  edit1.Text := '';
end;




procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  case key of
    '0':
    buttonNum0Click(sender);
    '1':
    button1Click(Sender);
    '2':
    button2Click(Sender);
    '3':
    button3Click(Sender);
    '4':
    button4Click(Sender);
    '5':
    button5Click(Sender);
    '6':
    button6Click(Sender);
    '7':
    button7Click(Sender);
    '8':
    button8Click(Sender);
    '9':
    button9Click(Sender);
    #8:
    buttonBSClick(sender);
    '*':
    buttonMPYClick(sender);
    '+':
    buttonADDClick(Sender);
    '-':
    buttonSUBClick(Sender);
    ',':
    button10Click(Sender);
    '/':
    buttonDIVClick(Sender);
    #13:
    buttonEQUALClick(Sender);

  end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  startcalc :=true;
end;

end.
