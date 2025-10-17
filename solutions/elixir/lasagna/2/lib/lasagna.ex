defmodule Lasagna do
  def expected_minutes_in_oven() do
    40
  end
  def remaining_minutes_in_oven(left) do
    expected_minutes_in_oven() - left
  end
  def preparation_time_in_minutes(prep) do
    prep * 2
  end
  def total_time_in_minutes(prep, left) do
    preparation_time_in_minutes(prep) + left
  end
  def alarm() do
    if remaining_minutes_in_oven(40) == 0 do 
      "Ding!"
    else
      "Not yet!"
    end
  end
end
