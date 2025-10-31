echo "building backend port 9001";

mkdir -p .log;
mkdir -p .public;

export BUILD_DIR="build"
export BUILD_TYPE="RelWithDebInfo"
export BUILD_CXX_FLAGS="-std=c++17"
export BUILD_CXX_FLAGS_DEBUG="-fsanitize=address;-g"

cmake -S . \
      -G Ninja \
      -B $BUILD_DIR \
      -DCMAKE_BUILD_TYPE=$BUILD_TYPE \
      -DCMAKE_CXX_FLAGS=$BUILD_CXX_FLAGS \
      -DCMAKE_CXX_FLAGS_DEBUG=$BUILD_CXX_FLAGS_DEBUG \
      -DCMAKE_EXPORT_COMPILE_COMMANDS=1;

ln -sf $BUILD_DIR/compile_commands.json ./;

cmake --build build;

