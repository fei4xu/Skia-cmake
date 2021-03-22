# Skia-cmake
Skia with cmake files


Skia as a submodule, so the lastest skia development can be tracked.

`git submodule add https://github.com/google/skia.git` which is an official mirror site of https://skia.googlesource.com/skia

## How to use
```sh
mv skia_CMakeLists.txt skia/CMakeLists.txt
mv SkiaConfig.cmake skia/SkiaConfig.cmake
mv skia_experimental_c-api-example_CMakeLists.txt skia/experimental/c-api-example/CMakeLists.txt 
```
during my development, I do before I commit my changes:
```
mv skia/CMakeLists.txt skia_CMakeLists.txt
mv skia/SkiaConfig.cmake .
mv skia/experimental/c-api-example/CMakeLists.txt skia_experimental_c-api-example_CMakeLists.txt
rm skia/experimental/c-api-example/build/ -r
```
Then you can
```sh
mkdir build
cd build
cmake ..
make
sudo make install
```

## Progress

porting `is_official_build`, `is_component_build` ...