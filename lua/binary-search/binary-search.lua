return function(array, target)
  local high = #array
  local low = 1

  while high >= low do
    local mid = math.floor((high + low) / 2)
    local guess = array[mid]

    if guess == target then
      return mid
    end

    if guess > target then
      high = mid - 1
    else
      low = mid + 1
    end
  end

  return -1
end
