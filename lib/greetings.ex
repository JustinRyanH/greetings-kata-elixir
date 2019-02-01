defmodule Greetings do

  def greet(name) do
    case String.upcase(name) == name do
      true -> shout(name)
      false -> gentle(name)
    end
  end
  def greet(), do: greet("my friend")
  def gentle(name), do: "Hello, #{name}."
  def shout(name), do: "HELLO #{name}!"
  
end
