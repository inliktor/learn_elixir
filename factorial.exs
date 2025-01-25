defmodule Mathematik do
  @spec factorial(number) :: integer
  # number = 0 -> 1
  def factorial(0), do: 1 #/1
  # number < 0 -> raise "Number must be positive" n! = -1 -> raise "Number must be positive"
  def factorial(number) when number<0, do: raise "Number must be positive" #/1
  # if number is not integer -> raise "Number must be integer" n! = "lool" -> raise "Number must be integer"
  def factorial(number) when not is_integer(number), do: raise "Number must be integer" #/1
  # n! = 5 -> 5*4*3*2*1
  def factorial(number) when is_integer(number) and number >0  do #/1
    number*factorial(number-1)
  end
end

number = 21
number |> Mathematik.factorial() |> IO.inspect()
