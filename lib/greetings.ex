defmodule Greetings do

  def greet() do
    greet("my friend")
  end

  def greet([name | [another_name | []]]) do
    "#{name} and #{another_name}" |> greet
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
