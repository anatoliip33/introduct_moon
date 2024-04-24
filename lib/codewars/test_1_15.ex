defmodule Codewars.Test1_15 do
  @doc """
    task 1
    An anagram is the result of rearranging the letters of a word
    to produce a new word (see wikipedia).

    Note: anagrams are case insensitive

    Complete the function to return true if the two arguments given
    are anagrams of each other;
    return false otherwise.

    ## Params

      - a, b: strings

    ## Examples

      iex(1)> anagram?("foefet", "toffee") === true
      iex(2)> anagram?("dumble", "bumble") === false
      iex(3)> anagram?("Buckethead", "DeathCubeK") === true
  """
  def anagram?(_a, _b) do

  end

  @doc """
    task 2
    Create a function named divisors/Divisors that takes an integer n > 1
    and returns an array with all of the integer's divisors
    (except for 1 and the number itself), from smallest to largest.
    If the number is prime return the string "n is prime"

  ## Params

      - n: Integer

  ## Examples

      iex(1)> divisors(12) # should return [2,3,4,6]
      iex(2)> divisors(25) # should return [5]
      iex(3)> divisors(13) # should return "13 is prime"
  """
  def divisors(_n) do

  end

  @doc """
    task 3
    Complete it so that passing in RGB decimal values will result
    in a hexadecimal representation being returned.
    Valid decimal values for RGB are 0 - 255.
    Any values that fall out of that range must be
    rounded to the closest valid value.

    Note: Your answer should always be 6 characters long,
    the shorthand with 3 will not work here.

  ## Params

      - a,b,c: Integer

  ## Examples

      iex(1)> rgb(1,2,3) == "010203"
      iex(2)> rgb(255,255,255) == "FFFFFF"
      iex(3)> rgb(255,255,300) == "FFFFFF"
      iex(4)> rgb(148,0,211) == "9400D3"
      iex(5)> rgb(212,53,12) == "D4350C"
      iex(6)> rgb(173,255,47) == "ADFF2F"
  """
  def rgb(_a, _b, _c) do

  end
end
