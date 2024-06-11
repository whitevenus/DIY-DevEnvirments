-- print(package.path)
local servers = {
  lua_ls = require("lua"),
  --
}
    --
for name, config in pairs(servers) do
  -- print(config)
  if config ~= nil and type(config) == "table" then
    -- 自定义初始化配置文件
    -- print(name)
    print("config is a table")
    config.on_setup(name)
  else
    print(name)
    print(config)

  end
end
