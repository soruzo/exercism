defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    daily = 8.0
    daily * hourly_rate
  end

  def apply_discount(before_discount, discount) when is_number(before_discount) and is_number(discount) do
    if discount >= 0.0 and discount <= 100.0 do
      discount_value = before_discount * discount / 100.0
      discounted_price = before_discount - discount_value
      discounted_price
    end
  end

  def monthly_rate(hourly_rate, discount) when is_number(hourly_rate) and is_number(discount) do
    if hourly_rate >= 0.0 and discount >= 0.0 and discount <= 100.0 do
      hourly_value = hourly_rate * 8 * 22
      discount_value = discount / 100.0
      result = hourly_value - discount_value
      
      result
    end
  end

  def days_in_budget(budget, hourly_rate, discount) do
    # Please implement the days_in_budget/3 function
  end
end
