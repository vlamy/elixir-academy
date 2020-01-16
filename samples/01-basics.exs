# Inspire from https://learnxinyminutes.com/docs/elixir/
defmodule TypesAcademy do
  @moduledoc """
  Elixir basic types samples, for elixir academy.
  This sample illustrates module, functions and basic types
  """

  #--------- BASIC TYPES ----------------------

  """
  A function that returns the integer 0
  is_integer(0) = is_integer 0
  """
  def zero_func do
    0
  end

  """
  A function that return the string "hello world !"
  """
  def hello_world_string do
    "hello world !"
  end

  """
  returning the atome :hello_world
  """
  def hello_world_atom do
   :hello_world
  end

  """
  returns a list with elements of different types
  """
  def list_sample do
    [0, "hello world", :hello_world, 0.1, 0x1F, true]
  end

  """
  returns a tuple with elements of different types
  """
  def tuple_sample do
    {0, "hello world", :hello_world, 0.1, 0x1F, true}
  end
end
