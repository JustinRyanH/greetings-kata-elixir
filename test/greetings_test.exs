defmodule GreetingsTest do
  use ExUnit.Case
  doctest Greetings

  test "greets by name" do
    assert Greetings.greet("Bob") == "Hello, Bob."
    assert Greetings.greet("Jill") == "Hello, Jill."
  end
end
