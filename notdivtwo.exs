defmodule Math do
  @spec keepOd(list()) :: list()
  def keepOd([h|t]) when is_number(h) and rem(h,2)!=0 do
    [h|keepOd(t)]
  end

  def keepOd([h|t]) when is_number(h) and rem(h,2)==0 do
    keepOd(t)
  end

  def keepOd([]),do: []

  def keepOd(arg) when not is_list(arg),do: raise("Argument must be a list")



end

[1,3,2,4,7,5,101,10,52,42,43,55] |> Math.keepOd() |> IO.inspect()
