toolchain("arm-none-eabi") -- add toolchain
    set_kind("cross") -- set toolchain kind
	set_description("arm embedded compiler")
toolchain_end()

if(get_config("sdk")==nil) then
    local default_path = "/opt/gcc-arm-none-eabi-10-2020-q4-major"
    set_config("sdk", default_path) -- set toolchain directory
end

set_toolchains("arm-none-eabi") -- set toolchains
