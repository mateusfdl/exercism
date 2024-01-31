local M = {}

local shallow_copy = function(t)
  local new = {}
  for k, v in pairs(t) do
    new[k] = v
  end
  return new
end

function M.scores()
  return M.__score
end

function M.latest()
  return M.__score[#M.__score]
end

function M.personal_best()
  local unsorted = shallow_copy(M.__score)

  table.sort(unsorted, function(a, b)
    return a > b
  end)


  return unsorted[1]
end

function M.personal_top_three()
  local unsorted = shallow_copy(M.__score)

  table.sort(unsorted, function(a, b)
    return a > b
  end)

  return { unsorted[1], unsorted[2], unsorted[3] }
end

local HighScore = function(score)
  M.__score = score
  return M
end

return HighScore
