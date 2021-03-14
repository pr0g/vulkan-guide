# Add source to this project's executable.
add_executable (chapter-3-scene
  main.cpp
  vk_engine.cpp
  vk_engine.h
  vk_types.h
  vk_mesh.cpp
  vk_mesh.h
  vk_initializers.cpp
  vk_initializers.h)

set_property(
  TARGET chapter-3-scene PROPERTY VS_DEBUGGER_WORKING_DIRECTORY $<TARGET_FILE_DIR:chapter-3-scene>)

target_include_directories(chapter-3-scene PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}")

target_link_libraries(
  chapter-3-scene PRIVATE
  Vulkan::Vulkan vkbootstrap vma glm tinyobjloader imgui stb_image)
target_compile_features(chapter-3-scene PRIVATE cxx_std_17)
