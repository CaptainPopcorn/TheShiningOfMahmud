program P_ShiningOfMahmud;

uses
  Forms,
  U_Main in 'U_Main.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
