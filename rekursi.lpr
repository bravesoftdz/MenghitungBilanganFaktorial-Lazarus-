program rekursi;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes
  { you can add units after this };

function FAKT (N : integer) : integer;
begin
     if N = 0 then
     FAKT :=1
     else
       FAKT := N * FAKT(N-1)
end;

var
  inp_nilai,nilai_n :integer;


begin
  writeln('P Faktorial');
  writeln();
  write ('Masukan Nilai : ');read(inp_nilai);
  nilai_n := inp_nilai;
  writeln (nilai_n, 'Faktorial  : ',FAKT(nilai_n));
  readln();
  readln();
end.

