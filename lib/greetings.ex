defmodule Greetings do

  def greet() do
    greet("my friend")
  end

  def greet(name) do
    cond do
      String.upcase(name) == name -> "HELLO #{name}!"
      true -> "Hello, #{name}."
    end
  end

end
