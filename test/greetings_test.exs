defmodule GreetingsTest do
  use ExUnit.Case
  doctest Greetings

  test "greets by name" do
    assert Greetings.greet("Bob") == "Hello, Bob."
    assert Greetings.greet("Jill") == "Hello, Jill."
  end

  test "handles null" do
    assert Greetings.greet() == "Hello, my friend."
  end

  test "shouts back" do
    assert Greetings.greet("JERRY") == "HELLO JERRY!"
  end

  test "handles two names" do
    assert Greetings.greet(["Jill", "Jane"]) ==  "Hello, Jill and Jane."
  end

  test "handles arbitrary number of names" do
    assert Greetings.greet(["Amy", "Brian", "Charlotte"]) == "Hello, Amy, Brian, and Charlotte."
  end
end
