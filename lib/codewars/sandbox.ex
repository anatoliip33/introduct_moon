defmodule Codewars.Sandox do
  def of([]) do
    0
  end

  def of([_head | tail]) do
    1 + of(tail)
  end

  def reduce() do
    [1, 2, 3]
    |> Enum.reduce(fn (x, acc) ->
      x + acc
    end)
  end
end
