local Hamming = {
}

function Hamming.compute(a, b)
  local distance = 0

  if (#a ~= #b) then
    return -1
  end

  for i = 1, #a do
    local a_strand = string.sub(a, i, i)
    local b_strand = string.sub(b, i, i)

    if (a_strand ~= b_strand) then
      distance = distance + 1
    end
  end

  return distance
end

return Hamming
