# Modules are used to organize named and private functions into a namespace
defmodule F do
  def func1(param) do
    x = 1
    x = x + 0
    IO.puts("Value of x is #{x}")
    x = 2
    IO.puts("Value of x is #{x}")
    IO.puts("Value of param is #{param}")

    try do
      ^x = 1
    rescue
      e in RuntimeError -> IO.puts("An error occured :" <> e.message)
    after
      IO.puts("The end")
    end

    # if ^x = 1 do
    #   IO.puts("X is equal to 2")
    # end
  end

  def testif(color) do
    if color == "blue", do: "yes"
  end

  def unlesstest(color) do
    unless color === "green" do
      IO.puts("Input passed was NOT green")
    else
      IO.puts("Input passed was green")
    end
  end

  def casetest(result) do
    case result do
      result when result in [{:ok, "success"}, {:nok, "success"}] -> IO.puts("this matches")
      _ -> IO.puts("mismatch")
    end
  end

  def conddotest(n) do
    cond do
      n in ["blue", "red", "green", "black"] ->
        IO.puts("the color is #{n}")

      n not in ["blue", "red", "green", "black"] ->
        IO.puts("the color is not in the list of valid choices")

      n in [true] ->
        IO.puts("the color is not in the list of valid choices")
    end
  end

  def withtest() do
    result = {:ok, "result"}
    error = {:error, "error"}
    # IO.puts("#{error}")

    with {:error, error} <- error do
      IO.puts("Value of Error in with is #{error}")
    end

    with {:ok, result} <- result, do: IO.puts("Value of Result is #{result}")
  end

  def anonfunc() do
    sum = fn a, b -> a + b end

    IO.puts("The sum of 1 and 2 is #{sum.(1, 2)}")
    IO.puts(sum.(1, 2))

    prod = &(&1 * &2 * &3)
    IO.puts("The result of 7 * 7 * 7 is #{prod.(7, 7, 7)}")
  end
end

F.anonfunc()
# F.withtest()
# F.conddotest("xreen")
# result = {:nok, "success"}
# F.casetest(result)
# F.unlesstest("blue")
# IO.puts("Funct2 returns = " <> F.testif("blue") <> " Funct2 returns = #{F.testif("blue")}")
# IO.puts("Funct2 returns = #{F.testif("blue")}")
IO.puts("successful execution")
