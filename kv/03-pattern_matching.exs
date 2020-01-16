# iex(1)> c "03-pattern_matching.exs"
# iex(2)> format {:ok, content, 2}
defmodule KV do
  #
  # Pattern matching using conditions
  #
  def format(tuple) do
    case tuple do
      {:ok, content, 1} -> content
      {:ok, content, times} -> content <> format({:ok, content, times - 1})
      {:stop, _, _} -> "you ask me to stop !"
      _ -> "default content"
    end
  end

  #
  # Pattern matching against function parameters
  #
  def fmt({:stop, _, _}) do
    "you ask me to stop !"
  end

  def fmt({:ok, content, 1}) do
    content
  end

  def fmt({:ok, content, times}) do
      content <> fmt {:ok, content, times - 1}
  end

  #
  # Pattern matching against guarded functions
  #
  def fmt(content) when content == {:match, "", ""} do
    "mathcing in guarded function"
  end

  def fmt({_,_,_}) do
    "default content"
  end
end
