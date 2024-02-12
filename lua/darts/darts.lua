local Darts = {}

function Darts.score(x, y)
  local hypot = math.sqrt(math.pow(x, 2) + math.pow(y, 2))

  if hypot <= 1 then
    return 10
  elseif hypot <= 5 then
    return 5
  elseif hypot <= 10 then
    return 1
  end

  return 0
end

return Darts
