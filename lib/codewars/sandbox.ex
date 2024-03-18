defmodule Codewars.Sandox do
  def of([]) do
    "LOL" |> IO.inspect()
    0
  end

  def of([head | tail]) do
    head |> IO.inspect()
    tail |> IO.inspect()

    1 + of(tail)
  end

  def reduce() do
    [1, 2, 3]
    |> Enum.reduce(fn (x, acc) -> x + acc end)
  end
end
