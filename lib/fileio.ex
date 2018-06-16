defmodule Fileio do
  def readFromFile do
    path = Path.expand('txtfile/file-to-read.txt',__DIR__)
    case File.read(path) do
      {:ok, text} -> text
      {:error, _} -> IO.puts("Sorry. Could not read from file")
      System.halt(1)
    end
  end
end
