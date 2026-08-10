

SQL> SET SERVEROUTPUT ON;
SQL> CREATE OR REPLACE PROCEDURE Sum_Proc(a IN number, b IN number) IS c number;
  2  BEGIN
  3  c := a + b;
  4  dbms_output.put_line('Sum of two nos = '|| c);
  5  END Sum_Proc;
  6  /

Procedure created.


SQL> DECLARE
  2  x number;
  3  y number;
  4  BEGIN
  5  x := &x;
  6  y := &y;
  7  Sum_Proc(x,y);
  8  END;
  9  /
Enter value for x: 10
old   5: x := &x;
new   5: x := 10;
Enter value for y: 20
old   6: y := &y;
new   6: y := 20;
Sum of two nos = 30

PL/SQL procedure successfully completed.


SQL> SET SERVEROUTPUT ON;
SQL> CREATE OR REPLACE FUNCTION Sum_Func (a IN number, b IN number) RETURN number
  2  IS c number;
  3  BEGIN
  4  c := a + b; RETURN c;
  5  END Sum_Func;
  6  /

Function created.


SQL> SET SERVEROUTPUT ON;
SQL>
SQL> DECLARE
  2      no1 NUMBER;
  3      no2 NUMBER;
  4      result NUMBER;
  5  BEGIN
  6      no1 := &no1;
  7      no2 := &no2;
  8      result := Sum_Func(no1, no2);
  9      dbms_output.put_line('Sum of two nos= ' || result);
 10  END;
 11  /
Enter value for no1: 5
old   6:     no1 := &no1;
new   6:     no1 := 5;
Enter value for no2: 5
old   7:     no2 := &no2;
new   7:     no2 := 5;
Sum of two nos= 10

PL/SQL procedure successfully completed.

