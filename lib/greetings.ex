defmodule Greetings do

  def greet() do
    greet("my friend")
  end

  def greet([name | more_names]) do
    [name | more_names] |> 
    Enum.partition(&shout?(&1)) |>
    greet()
  end

  def greet({[], salutes}) do
    salutes |> salute
  end

  def greet({shouts, []}) do
    shouts |> shout
  end

  def greet({shouts, salutes}) do
    salute(salutes) <> " AND " <> shout(shouts)
  end

  def greet(name) do
    cond do
      name |> shout?() -> name |> shout
      true -> name |> salute
    end
  end

  defp salute([name | tail]) do
    salute(name, tail)
  end

  defp salute(name) do
    "Hello, #{name}."
  end

  defp salute(accumulated, [name | []]) do
    "#{accumulated} and #{name}" |> greet
  end  

  defp salute(accumulated, [name | more_names]) do
    "#{accumulated}, #{name}," |> salute(more_names)    
  end

  defp shout(name) do
    "HELLO #{name}!"
  end

  defp shout?(name) do
    String.upcase(name) == name
  end 
end
