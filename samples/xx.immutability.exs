defmodule Immutability do
  @moduledoc """
  Samples that helps understanding immutability in Elixir
  """

  @my_tuple {"hello", 0, :world}

  def my_tuple, do: @my_tuple

  def modify_arg(arg) do
    arg = {2, 3, 4}
    arg
  end

  def modify_attribute do
    @my_tuple = {:modified, "tuple"}
    @my_tuple
  end
end
