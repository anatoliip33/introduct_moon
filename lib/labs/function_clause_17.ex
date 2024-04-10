defmodule Labs.FunctionClause17 do
  def valid_game?({{_el1, _el2, _el3}, {_el4, _el5, _el6}, {_el7, _el8, _el9}} = state) do
    state
    |> Tuple.to_list()
    |> Enum.map(&(&1 |> Tuple.to_list()))
    |> List.flatten()
    |> Enum.map(&(&1 in [:x, :o, :f]))
    |> Enum.all?()
    |> dbg()
  end

  def valid_game?(_), do: false

  def check_who_win(game_board) do
    game_board
    |> form_horizontal_lines_from_vertical()
    |> Enum.map(
      &(&1
        |> check_lines())
    )
    |> Enum.filter(& &1)
    |> fetch_winner()
  end

  defp form_horizontal_lines_from_vertical(
         {
           {a1, a2, a3},
           {b1, b2, b3},
           {c1, c2, c3}
         } = game_board
       ) do
    [
      {a1, b1, c1},
      {a2, b2, c2},
      {a3, b3, c3},
      {a1, b2, c3},
      {a3, b2, c1}
    ]
    |> Enum.concat(
      game_board
      |> Tuple.to_list()
    )
  end

  defp check_lines(cell) do
    case cell do
      {:x, :x, :x} ->
        {:win, :x}

      {:o, :o, :o} ->
        {:win, :o}

      _ ->
        nil
    end
  end

  defp fetch_winner([winner]), do: winner
  defp fetch_winner([]), do: :no_win
end
