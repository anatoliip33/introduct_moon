defmodule Codewars.FindTheDivisors do
  def divisors(n) do
    2..(n-1)
    |> Enum.filter(&
      n > 1 && rem(n, &1) == 0
    )
    |> show_dividers(n)
  end

  defp show_dividers([], n), do: "#{n} is prime"
  defp show_dividers(dividers, _), do: dividers
end
