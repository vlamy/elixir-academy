#iex(1)> c "04-process.exs"
#iex(2)> KV.start_link
#iex(3)> Process.send(:kv_process, :hello, [])
#iex(4)Process.whereis(:kv_process) |> Process.info
defmodule KV do
  def start_link do
    {:ok, pid} = Task.start_link(fn -> loop() end)
    Process.register(pid, :kv_process)
  end

  defp loop() do
    receive do
      :hello ->
        IO.puts "hello"
        loop()
      :world ->
        IO.puts "hello world !"
        loop()
      :exit ->
        Process.exit(self(), :exit)
      :terminate ->
        IO.puts "terminate"
    end
  end
end
