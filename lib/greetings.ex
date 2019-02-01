defmodule Greetings do

  def greet(name) when is_list(name) do
    _greet_list(name)
  end
  def greet(name) do
    case String.upcase(name) == name do
      true -> shout(name)
      false -> gentle(name)
    end
  end
  def greet(), do: greet("my friend")
  def gentle(name), do: "Hello, #{name}."
  def shout(name), do: "HELLO #{name}!"
  defp _greet_list([ head | tail ]), do: "Hello, #{head} and #{tail}."
  
end
