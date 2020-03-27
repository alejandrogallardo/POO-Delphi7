program ProPOO;

uses
  Forms,
  U_Principal in 'U_Principal.pas' {Form1},
  U_Operaciones in 'U_Operaciones.pas',
  U_FrmAbout in 'U_FrmAbout.pas' {FrmAbout};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFrmAbout, FrmAbout);
  Application.Run;
end.
