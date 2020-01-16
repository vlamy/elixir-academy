#iex(1)> c "kv.exs"
#iex(2)> KV.start_link
#iex(3)> Process.send(:kv_store, {:put, :hello, "world"}, [])
#iex(4)> Process.send(:kv_store, {:get, :hello, self()}, [])
#iex(5)> flush
defmodule KV do
  def start_link do
    {:ok, pid} = Task.start_link(fn -> loop(%{}) end)
    Process.register(pid, :kv_store)
  end

  defp loop(map) do
    receive do
      {:get, key, caller} ->
        send caller, Map.get(map, key)
        loop(map)
      {:put, key, value} ->
        loop(Map.put(map, key, value))
    end
  end
end
