defmodule Problem1 do
  def multiple_of_3?(a), do: rem(a, 3) == 0
  def multiple_of_5?(a), do: rem(a, 5) == 0

  def accumulate_if_multiple(a, acc) do
    cond do
      multiple_of_3?(a) ->
        a + acc
      multiple_of_5?(a) ->
        a + acc
      true ->
        acc
    end
  end
end


IO.puts Enum.reduce(0..999, &Problem1.accumulate_if_multiple/2)
