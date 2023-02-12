defmodule M do
  def main(my_int) do
    do_stuff(my_int)
  end

  def do_stuff(my_int) do
    # assign integer value
    # my_int = 100
    # my_int =

    if is_integer(my_int) do
      IO.puts(to_string(my_int * my_int))
    else
      IO.puts("not an integer")
    end
  end
end

input = IO.gets(" Please enter the value you want square of ")
variable = String.slice(input, 0..(String.length(input) - 2))
IO.puts("variable = #{variable}")
IO.puts(is_number(variable))
num = String.to_integer(variable)
IO.puts("sasa")

M.main(1)
