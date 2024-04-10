defmodule Codewars.Anagram do
  def letters(a) do
    a
    |> String.downcase()
    |> String.to_charlist()
    |> Enum.sort()
  end

  def anagram?(a, b) do
    letters(a) == letters(b)
  end
end
