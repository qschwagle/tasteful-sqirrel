.phony: test

test:
	cmake --build build
	cd build/tests && ctest 
