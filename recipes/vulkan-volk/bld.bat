@echo on
setlocal EnableDelayedExpansion

mkdir build
pushd build

cmake .. ^
    %CMAKE_ARGS% ^
    -DVOLK_INSTALL=ON ^
    -DBUILD_SHARED_LIBS=ON
if errorlevel 1 exit 1

cmake --build . --target install
if errorlevel 1 exit 1

popd

