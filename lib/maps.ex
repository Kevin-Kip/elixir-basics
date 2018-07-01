defmodule MapTests do
  def example do
    %{name: "Kevin", mail: "amplemail@sample.com"}
  end

  def findItem do
    # name = Map.get(example, :name) This works too
    name = example[:name]
    email = Map.get(example, :mail)
    # email = example[:mail] alternative
    IO.puts("Name: #{name} \nEmail: #{email}")
  end

  def putItem do
    %{example | name: "Brian"}
  end

  def sortMap do
    # Sort keys
    Enum.sort(Map.keys(example))
    # Output: [:mail, :name]
  end
end
