defmodule Greetings do

  def greet() do
    greet("my friend")
  end

  def greet([name | tail]) do
    greet(name, tail)
  end

  defp greet(accumulated, [name | []]) do
    "#{accumulated} and #{name}" |> greet
  end  

  defp greet(accumulated, [name | more_names]) do
    "#{accumulated}, #{name}," |> greet(more_names)    
  end

  def greet(name) do
    cond do
      name |> shout? -> "HELLO #{name}!"
      true -> "Hello, #{name}."
    end
  end

  defp shout?(name) do
    String.upcase(name) == name
  end 
end
