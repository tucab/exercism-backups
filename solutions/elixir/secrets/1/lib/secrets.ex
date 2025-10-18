defmodule Secrets do
  def secret_add(secret) do
    fn adding ->
      secret + adding
    end
  end

  def secret_subtract(secret) do
    fn subbing ->
      subbing - secret
    end
  end

  def secret_multiply(secret) do
    fn multing ->
      multing * secret
    end
  end

  def secret_divide(secret) do
    fn divving ->
      trunc(divving/secret)
    end
  end

  def secret_and(secret) do
    fn ander ->
      Bitwise.band(secret, ander)
    end
  end

  def secret_xor(secret) do
    fn xorer ->
      Bitwise.bxor(secret, xorer)
    end
  end

  def secret_combine(secret_function1, secret_function2) do
    fn combiner ->
      (combiner |> (secret_function1.() |> secret_function2.()))
    end
  end
end
