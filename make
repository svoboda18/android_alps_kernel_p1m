export KBUILD_BUILD_USER="svoboda18"
export KBUILD_BUILD_HOST="ubuntu"
export CROSS_COMPILE="${PWD}/toolchain/bin/aarch64-linux-android-"

read -p "Do you want to clean? (y)" clean
[ $clean = "y" ] && {
make clean && make mrproper
mkdir out
}

make ARCH=arm64 O=out p1m_defconfig ; make ARCH=arm64 -j30 O=out
