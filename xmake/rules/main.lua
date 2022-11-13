set_xmakever("2.7.2")

includes("config.lua")

rule("csp_rule_sys")
do
    -- add other rule deps
    add_deps("csp_rule_sys_config")
end
rule_end()
