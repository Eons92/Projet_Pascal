{
 LANGAGE DE PROGRAMMATION - PROJET 1TM2:
 ADAMS Guillaume
 DECHAMPS Xavier
 VAN BRANDE Richard
}

program compteEstBon;
uses crt;
var tbPlaque : array[1..24] of real;   {Tableau des nombres disponible}
    tbDeck : array[1..6] of real;      {Tableau des nombres choisi}

const INTERVAL_MIN = 100;              {Interval du nombre à atteindre}
      INTERVAL_MAX = 999;              {/}

procedure initPlaque();
begin
     tbPlaque[1] := 1;
     tbPlaque[2] := 2;
     tbPlaque[3] := 3;
     tbPlaque[4] := 4;
     tbPlaque[5] := 5;
     tbPlaque[6] := 6;
     tbPlaque[7] := 7;
     tbPlaque[8] := 8;
     tbPlaque[9] := 9;
     tbPlaque[10] := 10;
     tbPlaque[11] := 1;
     tbPlaque[12] := 2;
     tbPlaque[13] := 3;
     tbPlaque[14] := 4;
     tbPlaque[15] := 5;
     tbPlaque[16] := 6;
     tbPlaque[17] := 7;
     tbPlaque[18] := 8;
     tbPlaque[19] := 9;
     tbPlaque[20] := 10;
     tbPlaque[21] := 25;
     tbPlaque[22] := 50;
     tbPlaque[23] := 75;
     tbPlaque[24] := 100;
end;

procedure initDeck();
begin

end;

function rand(min, max : integer) : real;
var i : integer;
begin
     i := Random(max - min) + min;
     rand := i;
end;

procedure affichage();
begin
     writeln('');
     writeln('#######################');
     writeln('##                   ##');
     writeln('## Le compte est bon ##');
     writeln('##                   ##');
     writeln('#######################');
     writeln('');

end;



function operation(c : char; s : String) : boolean;
{Fonction qui vérifie que le caractère est présent
 dans une chaine donnée en paramètre              }
var ind : integer;
begin
     ind := 1;
     while not ((s[ind] = c) or (ind = length(s))) do
     ind := ind + 1;
     operation := (s[ind] = c)
end;

procedure resultat();
begin
     affichage();
end;

procedure test();
var i : integer;
    randomNumber : real;
begin
     for i:=1 to 24 do begin
     writeln('tableau[',i:0,'] = ',tbPlaque[i]:0:0,'');
     end;
     randomNumber := rand(INTERVAL_MIN, INTERVAL_MAX);
     writeln('random number : ',randomnumber:0:0,'');
end;

begin
     Randomize; {}
     initPlaque();
     test();

     resultat();
     readkey;
end.
