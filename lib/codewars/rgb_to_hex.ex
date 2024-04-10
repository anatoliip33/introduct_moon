defmodule Codewars.RgbToHex do
  def rgb(r, g, b) do
    [r, g, b]
    |> Enum.map(fn x -> x |> max(0) |> min(255) end)
    |> Enum.map(fn x -> Integer.to_string(x, 16) end)
    |> Enum.map(fn x -> String.pad_leading(x, 2, "00") end)
    |> Enum.join()
  end
end
