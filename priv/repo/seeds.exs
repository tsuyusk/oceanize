# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Oceanize.Repo.insert!(%Oceanize.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Oceanize.{Repo, User}

Repo.insert!(%User{
  name: "John Doe",
  password: "123456",
  age: 53
})
