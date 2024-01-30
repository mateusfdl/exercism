local ArmstrongNumbers = {}

function ArmstrongNumbers.is_armstrong_number(number)
  local sum = 0
  local numbers = {}
  local dummy = number

  while number ~= 0 do
    table.insert(numbers, number % 10)
    number = math.floor(number / 10)
  end

  for _, value in ipairs(numbers) do
    sum = sum + math.floor(value ^ (#numbers))
  end

  return sum == dummy
end

return ArmstrongNumbers
