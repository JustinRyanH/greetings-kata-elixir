defmodule Greetings do

  def greet([ first, second ]) do
    "Hello, #{first} and #{second}."
  end
  def greet(name) when is_list(name) do
    _greet_list(name, "Hello")
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
  defp _greet_list([ head | [] ], result) do
    "#{result}, and #{head}."
  end
  defp _greet_list([ head | tail ], result) do
    _greet_list(tail, "#{result}, #{head}")
  end
end
