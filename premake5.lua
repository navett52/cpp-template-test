workspace "GraphicsFromScratch"
    architecture "x64"

    configurations
    {
        "Debug"
    }

project_name = "Template"
project_pre  = "TEMP"
outputdir = "%{cfg.system}-%{cfg.architecture}"

project (project_name)
    location "src"
    kind "ConsoleApp"
    language "C++"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "src/**.hpp",
        "src/**.cpp"
    }

    links
    {
        -- Link third party libraries
        -- "SDL2"
    }

    filter "configurations:Debug"
        defines (project_pre .. "_DEBUG")
        symbols "On"
    -- filter "configurations:Prod"
    --     defines (project_pre .. "_PROD")
    --     optimize "On"