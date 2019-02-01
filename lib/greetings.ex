defmodule Greetings do

  def greet(name), do: "Hello, #{name}."
  def greet(), do: greet("my friend")
end
