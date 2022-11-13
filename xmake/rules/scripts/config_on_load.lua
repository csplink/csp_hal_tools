import("core.base.option")
import("core.project.config")
import("core.project.project")

-- import
function main(target)
    if option.get("menu") then return end -- if use menu then pass
    if os.isfile("csp.conf") then
        local import_configs = io.load("csp.conf")
        if import_configs then
            for k, v in pairs(import_configs) do
                if config.get(k) then
                    config.set(k, v, {force = true})
                end
            end
        end
    end
end
