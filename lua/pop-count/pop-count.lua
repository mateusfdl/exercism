local PopCount = {}

function PopCount.egg_count(number)
  local total = 0

  while number ~= 0 do
    if number % 2 ~= 0 then
      total = total + 1
    end

    number = math.floor(number / 2)
  end

  return total
end

return PopCount
