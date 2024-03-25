alias MySuperApp.{Repo, Phone, Room}


MySuperApp.Repo.insert_all(
  "left_menu",
  [
    %{id: 1, title: "Vision"},
    %{id: 2, title: "Getting started"},
    %{id: 3, title: "How to contribute?"},
    %{id: 4, title: "Colours"},
    %{id: 5, title: "Tokens"},
    %{id: 6, title: "Transform SVG"},
    %{id: 7, title: "Manifest"},
    %{id: 8, title: "Tailwind"}
  ]
)






















rooms_with_phones = %{
  "301" => ["0991122301", "0993344301"],
  "302" => ["0990000302", "0991111302"],
  "303" => ["0992222303"],
  "304" => ["0993333304", "0994444304"],
  "305" => ["0935555305", "09306666305", "0937777305"]
}

Repo.transaction fn ->
  rooms_with_phones
  |> Enum.each(fn {room, phones} ->
    %Room{}
    |> Room.changeset(%{room_number: room})
    |> Ecto.Changeset.put_assoc(
      :phones,
      phones
      |> Enum.map(&
        %Phone{}
        |> Phone.changeset(%{phone_number: &1})
      )
    )
    |> Repo.insert!()
  end)

  MySuperApp.Repo.insert_all(
    Room,
    [
      %{room_number: 666},
      %{room_number: 1408},
      %{room_number: 237}
    ]
  )

  MySuperApp.Repo.insert_all(
    Phone,
    [
      %{phone_number: "380661112233"},
      %{phone_number: "380669997788"},
      %{phone_number: "380665554466"}
    ]
  )

  # room =
  #   %Room{}
  #   |> Room.changeset(%{room_number: 0})
  #   |> Repo.insert!()
  #   |> Repo.preload(:phones)
  #   |> Ecto.Changeset.change()
  #   |> Ecto.Changeset.put_assoc(
  #     :phones,
  #     [
  #       %{phone_number: "0123"},
  #       %{phone_number: "0991112233"},
  #     ]
  #   )
  #   |> Repo.update()
end
