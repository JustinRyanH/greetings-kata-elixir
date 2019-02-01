defmodule GreetingsTest do
  use ExUnit.Case
  doctest Greetings

  test "greets by name" do
    assert Greetings.greet("Bob") == "Hello, Bob."
  end
end
