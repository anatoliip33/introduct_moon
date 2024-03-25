defmodule MySuperApp.Models.Room do
  alias MySuperApp.{Repo, Room}

  import Ecto.Query

  def get_rooms_with_phones() do
    Repo.all(
      from room in Room,
      join: phones in assoc(room, :phones),
      preload: [phones: phones],
      select: map(
        room,
        [
          :id,
          :room_number,
          phones: [:id, :phone_number]
        ]
      )
    )
  end
end
