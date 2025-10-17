defmodule Lasagna do
  # Please define the 'expected_minutes_in_oven/0' function
  def expected_minutes_in_oven() do
    40
  end
  # Please define the 'remaining_minutes_in_oven/1' function
  def remaining_minutes_in_oven(left) do
    expected_minutes_in_oven() - left
  end
  # Please define the 'preparation_time_in_minutes/1' function
  def preparation_time_in_minutes(prep) do
    prep * 2
  end
  # Please define the 'total_time_in_minutes/2' function
  def total_time_in_minutes(prep, left) do
    preparation_time_in_minutes(prep) + left
  end
  # Please define the 'alarm/0' function
  def alarm() do
    if remaining_minutes_in_oven(40) == 0 do 
      "Ding!"
    else
      "Not yet!"
    end
  end
end
