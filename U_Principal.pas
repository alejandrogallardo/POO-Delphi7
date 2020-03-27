unit U_Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses U_Operaciones, U_FrmAbout;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  a,b,c,d : Double;
  FSuma : TSuma;
  FResta : TResta;
begin
  a := StrToFloat(Edit1.Text);
  b := StrToFloat(Edit2.Text);
  
  FSuma := TSuma.Create; // inicializar el constructor
  FSuma.leerA(a);
  FSuma.leerB(b);

  FResta := TResta.Create;
  FResta.leerA(a);
  FResta.leerB(b);

  c := FSuma.sumar;
  FSuma.Free;

  d := FResta.resta;
  FResta.Free;

  Label3.Caption := 'Suma: ' + FloatToStr(c) + ' Resta: ' + FloatToStr(d);


end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  FrmAbout.ShowModal;
end;

end.
