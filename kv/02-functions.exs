"""
iex(1)> c "02-functions.exs"
iex(2)> KV.hello_world
"""
defmodule KV do
  def hello do
    IO.puts(hello_world_string())
  end

  defp hello_world_string do
    "Hello World !"
  end
end
