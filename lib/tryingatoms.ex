defmodule TryingAtoms do
  def tryAtoms do
#    Examples of using atoms
    IO.puts("""
    Which Planet are you on?
    1. Mars
    2. Neptune
    3. Earth
    4. Uranus
    5. Pluto
    """)

    answer = String.first(IO.getn("Pick One >"))

    answer = case answer do
              "1" -> :Mars
              "2" -> :Neptune
              "3" -> :Earth
              "4" -> :Uranus
              "5" -> :Pluto
            end

    IO.puts("You belong to us for choosing #{answer}")
  end
end
