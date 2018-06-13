defmodule Guards do
  def showText(num) when num < 10 do
    IO.puts("#{num} is less than 10 ")
  end
  def showText(num) when num == 10 do
    IO.puts("#{num} is than 10 ")
  end
  def showText(num) when num > 10 do
    IO.puts("#{num} is greater than 10 ")
  end
end
