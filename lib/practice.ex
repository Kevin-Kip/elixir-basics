defmodule Practice do
  def doStuff do
    IO.puts("""
    Which Planet are you on?
    1. Mars
    2. Neptune
    3. Earth
    4. Uranus
    """)

    answer = String.first(IO.getn(""))

    answer = case answer do
              "1" -> :Mars
              "2" -> :Neptune
              "3" -> :Earth
              "4" -> :Uranus
            end

    IO.puts("You belong to us for choosing #{answer}")
  end
end
