unit unMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    txtMyName: TEdit;
    Label1: TLabel;
    btnOK: TButton;
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnOKClick(Sender: TObject);
var
  myName: String;
begin
  myName := Trim(txtMyName.Text);
  if myName.Length > 0 then
  begin
    MessageDlg('Hi, '+myName, mtInformation, [mbOK], 0);
  end else
  begin
    MessageDlg('Please Input Your Name.. ', mtError, [mbOK], 0);
  end;
end;

end.
