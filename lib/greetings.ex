defmodule Greetings do

  def greet() do
    greet("my friend")
  end

  def greet([name | tail]) do
    greet(name, tail)
  end

  def greet(name) do
    cond do
      name |> shout? -> "HELLO #{name}!"
      true -> "Hello, #{name}."
    end
  end

  defp greet(accumulated, []) do
    greet(accumulated)
  end

  defp greet(accumulated, [name | tail]) do
    greet("#{accumulated} and #{name}", tail)
  end  

  defp shout?(name) do
    String.upcase(name) == name
  end 
end
