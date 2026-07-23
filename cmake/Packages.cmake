message("Fetching packages")

CPMAddPackage(
  NAME glfw
  GITHUB_REPOSITORY glfw/glfw
  GIT_TAG 3.4
  VERSION 3.4
)

find_package(OpenGL REQUIRED)
