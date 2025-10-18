defmodule GuessingGame do
  # holy fuck this is probably the least efficient way to do this lmfao
  def compare(secret_number, guess) when guess === secret_number, do: "Correct"
  def compare(secret_number, guess) when is_atom(guess), do: "Make a guess"
  def compare(secret_number, guess) when guess === (secret_number + 1), do: "So close"
  def compare(secret_number, guess) when guess === (secret_number - 1), do: "So close"
  def compare(secret_number, guess) when guess > secret_number, do: "Too high"
  def compare(secret_number, guess) when guess < secret_number, do: "Too low"
  def compare(secret_number, guess) when not(is_integer(guess)), do: "Make a guess"
  def compare(secret_number), do: "Make a guess"
end
