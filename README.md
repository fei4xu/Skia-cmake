# Skia-cmake
Skia with cmake files


Skia as a submodule, so the lastest skia development can be tracked.

`git submodule add https://github.com/google/skia.git` which is an official mirror site of https://skia.googlesource.com/skia

## How to use
```sh
mv skia_CMakeLists.txt skia/CMakeLists.txt
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