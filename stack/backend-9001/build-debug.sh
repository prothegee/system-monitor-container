echo "building backend port 9001";

mkdir -p .log;
mkdir -p .public;

export BUILD_DIR="build"
export BUILD_TYPE="RelWithDebInfo"
export BUILD_CXX_FLAGS="-std=c++17"

cmake -S . \
      -G Ninja \
      -B $BUILD_DIR \
      -DCMAKE_BUILD_TYPE=$BUILD_TYPE \
      -DCMAKE_CXX_FLAGS=$BUILD_CXX_FLAGS \
      -DCMAKE_EXPORT_COMPILE_COMMANDS=1;

if [ -e ./compile_commands.json ]; then
    rm -rf compile_commands.json;
fi
# if [ -e $BUILD_DIR/compile_commands.json ]; then
#     rm -rf $BUILD_DIR/compile_commands.json;
# fi
ln -s $BUILD_DIR/compile_commands.json;

cmake --build build;

