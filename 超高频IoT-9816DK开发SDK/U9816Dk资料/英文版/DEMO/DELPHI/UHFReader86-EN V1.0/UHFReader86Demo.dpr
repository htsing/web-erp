program UHFReader86Demo;



uses
  Forms,
  frmUHFReader86demomain in 'frmUHFReader86demomain.pas' {frmUHFReader86main},
  UHFReader86_Head in 'UHFReader86_Head.pas',
  UHFReader86_DLL_Head in 'UHFReader86_DLL_Head.pas',
  fProgressbar in 'fProgressbar.pas' {frmprogress};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmUHFReader86main, frmUHFReader86main);
  Application.CreateForm(Tfrmprogress, frmprogress);
  Application.Run;
end.
