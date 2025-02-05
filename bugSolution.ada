```ada
function Check_Range(Num : Integer) return Boolean is
begin
   if Num >= 10 and Num <= 20 then
      return True;
   else
      return False;
   end if;
end Check_Range;

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Exceptions; use Ada.Exceptions;

procedure Main is
   Input_Num : Integer;
begin
   Put("Enter a number: ");
   begin
      Get(Input_Num);
   exception
      when Data_Error =>
         Put_Line("Invalid input. Please enter an integer.");
         return;
   end;

   if Check_Range(Input_Num) then
      Put_Line("The number is within the range [10, 20].");
   else
      Put_Line("The number is outside the range [10, 20].");
   end if;
end Main;
```