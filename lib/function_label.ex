defmodule FunctionLabel do
  defmacro __FUNCTION__(args) do
    quote bind_quoted: [args: args] do
      Function.capture(__MODULE__, elem(__ENV__.function, 0), elem(__ENV__.function, 1))
      |> apply(args)
    end
  end

  defmacro __using__(_opts) do
    quote do
      import FunctionLabel, only: [__FUNCTION__: 1]
    end
  end
end
