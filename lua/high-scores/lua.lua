local M = {}

function M.setup()
  M.config = {
    luajit = {
      enable = true,
    },
  }
end

local pool = setmetatable({},{
  __gc = function()
    print("pool gc")
  end
})

M.setup()

print(M.config.luajit)

print("FOOOO")

print(M.config.luajit)

print("BARRRRR")

-- sleep for 10 seconds
os.execute("sleep 10")
