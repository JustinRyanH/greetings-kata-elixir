defmodule Greetings do

  def greet() do
    greet("my friend")
  end

  def greet(name) do
    cond do
      shout?(name) -> "HELLO #{name}!"
      true -> "Hello, #{name}."
    end
  end

  defp shout?(name) do
    String.upcase(name) == name
  end 
end
