local fzy = require'matchfzy/fzy'

function compare(a, b)
  return a[3] > b[3]
end

function matchfzy(items, str)
  local result = {}
  local info = fzy.filter(str, items)
  table.sort(info, compare)
  for key, value in pairs(info) do
    table.insert(result, items[value[1]])
  end
  return result
end

return matchfzy
