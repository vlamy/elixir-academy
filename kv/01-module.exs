"""
iex(1)> c "01-module.exs"
iex(2)> KV.hello_world
"""
defmodule KV do
  def hello_world do
    IO.puts "hello world !"
  end
end
