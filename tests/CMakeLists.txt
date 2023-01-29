set(CMAKE_CXX_STANDARD 23)

include(FetchContent)
FetchContent_Declare(
  googletest
  GIT_REPOSITORY "https://github.com/google/googletest.git"
  GIT_TAG "v1.13.0"
)

# For Windows: Prevent overriding the parent project's compiler/linker settings
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)

FetchContent_MakeAvailable(googletest)

enable_testing()

add_executable(tasteful_squirrel_test
	tasteful_squirrel_mac_test.cpp
)

target_link_libraries(tasteful_squirrel_test tasteful_squirrel GTest::gtest_main)

include(GoogleTest)
gtest_discover_tests(tasteful_squirrel_test)
