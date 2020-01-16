defmodule Facilitation do
  @moduledoc """
  Elixir basic types samples, for elixir academy.
  This sample illustrates module, functions and basic types
  """
  @sample_list [1, 2, 3]

  ## Sum, the functionnal way
  def list([], acc), do: acc
  def list([head | tail], acc), do: list(tail, acc + head)

  ## Sum, the conditionnal way
  def for_sum(l) do
    acc = 0
    for element in l do
      acc = acc + l
    end
    acc
  end

  def sum(l), do: list(l, 0)
end
