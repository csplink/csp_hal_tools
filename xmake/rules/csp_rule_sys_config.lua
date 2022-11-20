set_xmakever("2.7.2")

rule("csp_rule_sys_config")
do
    on_load("scripts/config_on_load")
    on_config("scripts/config_on_config")
end
rule_end()
