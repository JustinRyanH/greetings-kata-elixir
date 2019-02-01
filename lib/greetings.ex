defmodule Greetings do

  def greet(), do: greet("my friend")
  def greet(name) when not is_list(name) do
    greet([name])
  end
  def greet(names) when is_list(names) do
    { loud, gentle } = Enum.partition(names, fn x -> String.upcase(x) == x end)
    _foo(gentle) <> shout(loud)
  end
  defp _foo([]), do: ""
  defp _foo([ only ]), do: "Hello, #{only}."
  defp _foo([ first, second ]) do
    "Hello, #{first} and #{second}."
  end
  defp _foo([ first | tail ]) do
    _gentle(tail, "Hello, #{first}")
  end

  
  # def gentle(name), do: "Hello, #{name}."
  def shout([]), do: ""
  def shout([name]), do: "HELLO #{name}!"

  defp _gentle([ head | [] ], result) do
    "#{result}, and #{head}."
  end
  defp _gentle([ head | tail ], result) do
    _gentle(tail, "#{result}, #{head}")
  end
end
