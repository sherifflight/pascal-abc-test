program Test;
type
  matrix1 = array [1..5, 1..3] of integer;
var m: matrix1 := ((1,3,18), (10,5,20), (14,2,21), (24,5,17), (27,1,16));
  i,j,c: integer;
  k: array [1..3] of integer;
  first: matrix1;
begin
//вывести числа месяца в порядке убывания
  first := m; 
  writeln(m);
  
  for i:=1 to 4 do
    for j:=1 to 5-i do
      if m[j][3] < m[j+1][3] then begin
        k[1] := m[j][1];
        k[2] := m[j][2];
        k[3] := m[j][3];
        
        m[j] := m[j+1];
        
        m[j+1][1] := k[1];
        m[j+1][2] := k[2];
        m[j+1][3] := k[3];
      end;
      
  writeln(m);
  for i:=1 to 5 do
    writeln('Число: ' + m[i][1] + '');
  
  writeln('Введите день недели :');
  readln(i);
  c:=0;
  for j:=1 to 5 do
    if m[j][2] = i then begin
      c:=1;
      writeln('Число :' + m[j][1] + ' Температура :' + m[j][3]);
    end;
  if c = 0 then begin
    writeln('Замер в этот день не проводился.');
  end;
  
  writeln();writeln();
  writeln('Какая неделя вас интересует? (1 - 1-5 числа, 2 - 6-12 числа, 3 - 13-19 числа, 4 - 20-26 числаб 5 - 27-31 числа)');
  readln(i);
  writeln('Температура :' + first[i][3]);
end.