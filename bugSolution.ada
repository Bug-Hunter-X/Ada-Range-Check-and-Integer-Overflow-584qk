```ada
function Check_Range(Num : Integer) return Boolean is
begin
   if Num < 10 or Num > 100 then
      return False;
   else
      return True;
   end if;
exception
   when Constraint_Error =>
      Put_Line("Integer overflow detected.");
      return False; -- Or handle appropriately
end Check_Range;

with Ada.Text_IO; use Ada.Text_IO;
procedure Main is
   Num : Integer := 1000;
   Result : Boolean;
begin
   Result := Check_Range(Num);
   Put_Line("The number is within the range: " & Boolean'Image(Result));
end Main;
```