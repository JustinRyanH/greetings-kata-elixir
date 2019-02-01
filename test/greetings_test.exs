
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

  test "greets two people" do
    assert Greetings.greet(["Jill", "Jane"]) == "Hello, Jill and Jane."
  end

  test "greets more than two people" do
    assert Greetings.greet(["Amy", "Brain", "Charlotte"]) == "Hello, Amy, Brain, and Charlotte."
  end
end
