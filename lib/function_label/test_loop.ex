defmodule FunctionLabel.TestLoop do
  use FunctionLabel

  def run(greeting, n \\ 5)
  def run(greeting, 0), do: IO.puts(greeting)
  def run(greeting, n) do
    IO.puts("n: #{n}")

    ## Alternative:
#   __FUNCTION__([greeting, n-1])
    __FUNCTION__ [greeting, n-1]
  end
end
