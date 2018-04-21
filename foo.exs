sub_two = fn x ->
  x - 2
end

# Here we'll use `IO.puts`, which just outputs to the console
IO.puts sub_two.(3)
