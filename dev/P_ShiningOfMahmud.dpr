program P_ShiningOfMahmud;

uses
  Forms,
  U_Main in 'U_Main.pas' {Form1},
  U_Characters in 'U_Characters.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
