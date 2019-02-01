defmodule Greetings do

  def greet(name) do
    "Hello, #{name}."
  end
  def greet(), do: greet("my friend")
end
