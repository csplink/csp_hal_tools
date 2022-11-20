set_xmakever("2.7.2")

if not get_config("sdk") then
    set_config("sdk", "/opt/gcc-arm-none-eabi-10-2020-q4-major") -- set toolchain directory
end
toolchain("arm-none-eabi") -- add toolchain
do
    set_kind("cross") -- set toolchain kind
    set_description("arm embedded compiler")
    set_toolset("cc", "arm-none-eabi-gcc")
    set_toolset("ld", "arm-none-eabi-gcc")
    set_toolset("ar", "arm-none-eabi-ar")
    set_toolset("as", "arm-none-eabi-gcc")
end
toolchain_end()
set_toolchains("arm-none-eabi") -- set toolchains
set_config("plat", "cross")
set_config("compiler", "gcc")
set_config("prefix", "arm-none-eabi-")
