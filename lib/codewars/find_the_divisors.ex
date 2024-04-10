defmodule Codewars.FindTheDivisors do
  def divisors(n) do
    arr = 1..n
    filteredArr = Enum.filter(arr, fn numb -> rem(n,numb) == 0 end)
    if(Enum.count(filteredArr) > 2) do
      filteredArr
    else "#{n} is prime"
    end
  end
end
