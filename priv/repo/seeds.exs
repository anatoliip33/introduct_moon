# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     MySuperApp.Repo.insert!(%MySuperApp.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

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

MySuperApp.Repo.insert_all(
  MySuperApp.RightMenu,
  [
    %{id: 1, title: "Bitcasino"},
    %{id: 2, title: "Sportsbet"},
    %{id: 3, title: "Livecasino"}
  ]
)
