# Add source to this project's executable.
add_executable(
  chapter-5
  main.cpp
  vk_engine.cpp
  vk_engine.h
  vk_types.h
  vk_mesh.cpp
  vk_mesh.h
  vk_textures.cpp
  vk_textures.h
  vk_initializers.cpp
  vk_initializers.h)

set_target_properties(chapter-5 PROPERTIES VS_DEBUGGER_WORKING_DIRECTORY
                                           "${CMAKE_SOURCE_DIR}")

target_include_directories(chapter-5 PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}")

target_link_libraries(
  chapter-5
  PRIVATE Vulkan::Vulkan
          vkbootstrap
          vma
          glm
          tinyobjloader
          imgui
          stb_image)
target_compile_features(chapter-5 PRIVATE cxx_std_17)

if(WIN32)
  # copy the SDL2.dll to the same folder as the executable
  add_custom_command(
    TARGET chapter-5
    POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy_if_different $<TARGET_FILE:SDL2::SDL2>
            $<TARGET_FILE_DIR:chapter-5>
    VERBATIM)
endif()
