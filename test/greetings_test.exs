
defmodule GreetingsTest do
  use ExUnit.Case
  doctest Greetings

  test "greets by name" do
    assert Greetings.greet("Bob") == "Hello, Bob."
  end

  test "greets no one" do
    assert Greetings.greet() == "Hello, my friend."
  end

  test "shouts at people" do
    assert Greetings.greet("BOB") == "HELLO BOB!"
  end
end
