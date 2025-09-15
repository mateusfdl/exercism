return function(s)
  local matrix = {}
  local row = {}

  for i = 1, #s do
    if s:sub(i, i) == '\n' or s:sub(i, i) == ' ' then
      table.insert(matrix, row)
      row = {}
    else
      print(tonumber(s:sub(i, i)))
      table.insert(row, tonumber(s:sub(i, i)))
    end
  end
  return matrix
end
