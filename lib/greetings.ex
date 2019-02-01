defmodule Greetings do

  def greet(), do: greet("my friend")
  def greet(name) when not is_list(name) do
    greet([name])
  end
  def greet(names) when is_list(names) do
    { upper, lower } = Enum.partition(names, fn x -> String.upcase(x) == x end)
    _gentle(lower) <> shout(upper)
  end
  defp _gentle([]), do: ""
  defp _gentle([ only ]), do: "Hello, #{only}."
  defp _gentle([ first, second ]), do: "Hello, #{first} and #{second}."
  
  defp _gentle([ first | tail ]), do: _gentle(tail, "Hello, #{first}")
  defp _gentle([ head ], result), do: "#{result}, and #{head}."
  defp _gentle([ head | tail ], result), do: _gentle(tail, "#{result}, #{head}")
  
  def shout([]), do: ""
  def shout([name]), do: "HELLO #{name}!"


end
