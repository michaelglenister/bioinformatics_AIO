#!/bin/bash

# This was written for focal Ubuntu 20.04LTSY
# ALLOW FOR NEW PACKAGE INSTALLATION FOR DEPENDENCY TREE
# DO NOT DOWNGRADE ANY PACKAGES DURING INSTALLATION
read -p "Enter your username: " username
# Check username correctness
[[ $(grep "^${username}:" /etc/passwd) ]] || (read -p "Invalid user name. Exiting" && exit)

sourcedir="/home/${username}/bin/source"
bindir="/home/${username}/bin"
#Enter MODELLER installation key. You only have to register and replace "xxx" with it. 
read -p "Enter your MODELLER key: " modeller_key

#ensuring the system is up to date with all the necessary systems 
apt install update-manager-core
apt upgrade
apt dist-upgrade

#Directory for downloaded sources
mkdir -p ${sourcedir}

#Set up vim profile for python (code highlighting & indentation)
cd /home/${username}
if [ -f .vimrc ];then cp .vimrc ".vimrc$(date +%s)";fi
echo "syntax on" > /home/${username}/.vimrc
echo "filetype indent plugin on" >> /home/${username}/.vimrc

#Packages and Dependencies for R Focal Fossa (V4) for Ubuntu 20.04LTS - Source file (This installation order is very important)
cd ${sourcedir}
wget "http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/libc6_2.31-0ubuntu9_amd64.deb"
apt install ./libc6_2.31-0ubuntu9_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcrypt/libcrypt1_4.4.10-10ubuntu4_amd64.deb"
apt install ./libcrypt1_4.4.10-10ubuntu4_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-10/libgcc-s1_10-20200411-0ubuntu1_amd64.deb"
apt install ./libgcc-s1_10-20200411-0ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-10/gcc-10-base_10-20200411-0ubuntu1_amd64.deb"
apt install ./gcc-10-base_10-20200411-0ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/l/lapack/libblas3_3.9.0-1build1_amd64.deb"
apt install ./libblas3_3.9.0-1build1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-10/libgfortran5_10-20200411-0ubuntu1_amd64.deb"
apt install ./libgfortran5_10-20200411-0ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/l/lapack/liblapack3_3.9.0-1build1_amd64.deb"
apt install ./liblapack3_3.9.0-1build1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl-base_5.30.0-9build1_amd64.deb"
apt install ./perl-base_5.30.0-9build1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/d/debconf/debconf_1.5.73_all.deb"
apt install ./debconf_1.5.73_all.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata_2019c-3ubuntu1_all.deb"
apt install ./tzdata_2019c-3ubuntu1_all.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib1g_1.2.11.dfsg-2ubuntu1_amd64.deb"
apt install ./zlib1g_1.2.11.dfsg-2ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/t/tcl8.6/libtcl8.6_8.6.10+dfsg-1_amd64.deb"
apt install ./libtcl8.6_8.6.10+dfsg-1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/f/fonts-dejavu/fonts-dejavu-core_2.37-1_all.deb"
apt install ./fonts-dejavu-core_2.37-1_all.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/f/fonts-liberation/fonts-liberation_1.07.4-11_all.deb"
apt install ./fonts-liberation_1.07.4-11_all.deb
wget "http://archive.ubuntu.com/ubuntu/pool/universe/t/ttf-bitstream-vera/ttf-bitstream-vera_1.10-8_all.deb"
apt install ./ttf-bitstream-vera_1.10-8_all.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/a/acl/libacl1_2.2.53-6_amd64.deb"
apt install ./libacl1_2.2.53-6_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/a/attr/libattr1_2.4.48-5_amd64.deb"
apt install ./libattr1_2.4.48-5_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/p/pcre2/libpcre2-8-0_10.34-7_amd64.deb"
apt install ./libpcre2-8-0_10.34-7_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux1_3.0-1build2_amd64.deb"
apt install ./libselinux1_3.0-1build2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.30-3ubuntu2_amd64.deb"
apt install ./coreutils_8.30-3ubuntu2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/s/sensible-utils/sensible-utils_0.0.12+nmu1_all.deb"
apt install ./sensible-utils_0.0.12+nmu1_all.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/u/ucf/ucf_3.0038+nmu1_all.deb"
apt install ./ucf_3.0038+nmu1_all.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/f/fontconfig/fontconfig-config_2.13.1-2ubuntu3_all.deb"
apt install ./fontconfig-config_2.13.1-2ubuntu3_all.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/e/expat/libexpat1_2.2.9-1build1_amd64.deb"
apt install ./libexpat1_2.2.9-1build1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng1.6/libpng16-16_1.6.37-2_amd64.deb"
apt install ./libpng16-16_1.6.37-2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/libfreetype6_2.10.1-2_amd64.deb"
apt install ./libfreetype6_2.10.1-2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/libuuid1_2.34-0.1ubuntu9_amd64.deb"
apt install ./libuuid1_2.34-0.1ubuntu9_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/f/fontconfig/libfontconfig1_2.13.1-2ubuntu3_amd64.deb"
apt install ./libfontconfig1_2.13.1-2ubuntu3_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11-data_1.6.9-2ubuntu1_all.deb"
apt install ./libx11-data_1.6.9-2ubuntu1_all.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/libx/libxau/libxau6_1.0.9-0ubuntu1_amd64.deb"
apt install ./libxau6_1.0.9-0ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd0_0.10.0-1_amd64.deb"
apt install ./libbsd0_0.10.0-1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdmcp/libxdmcp6_1.1.3-0ubuntu1_amd64.deb"
apt install ./libxdmcp6_1.1.3-0ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcb/libxcb1_1.14-2_amd64.deb"
apt install ./libxcb1_1.14-2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11-6_1.6.9-2ubuntu1_amd64.deb"
apt install ./libx11-6_1.6.9-2ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrender/libxrender1_0.9.10-1_amd64.deb"
apt install ./libxrender1_0.9.10-1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/x/xft/libxft2_2.3.3-0ubuntu1_amd64.deb"
apt install ./libxft2_2.3.3-0ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/libx/libxext/libxext6_1.3.4-0ubuntu1_amd64.deb"
apt install ./libxext6_1.3.4-0ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/l/lsb/lsb-base_11.1.0ubuntu2_all.deb"
apt install ./lsb-base_11.1.0ubuntu2_all.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/x/xorg/x11-common_7.7+19ubuntu14_all.deb"
apt install ./x11-common_7.7+19ubuntu14_all.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/libx/libxss/libxss1_1.2.3-1_amd64.deb"
apt install ./libxss1_1.2.3-1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/t/tk8.6/libtk8.6_8.6.10-1_amd64.deb"
apt install ./libtk8.6_8.6.10-1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/binutils-common_2.34-6ubuntu1_amd64.deb"
apt install ./binutils-common_2.34-6ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/libbinutils_2.34-6ubuntu1_amd64.deb"
apt install ./libbinutils_2.34-6ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/libctf-nobfd0_2.34-6ubuntu1_amd64.deb"
apt install ./libctf-nobfd0_2.34-6ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/libctf0_2.34-6ubuntu1_amd64.deb"
apt install ./libctf0_2.34-6ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-10/libstdc++6_10-20200411-0ubuntu1_amd64.deb"
apt install ./libstdc++6_10-20200411-0ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/binutils_2.34-6ubuntu1_amd64.deb"
apt install ./binutils_2.34-6ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-9/gcc-9-base_9.3.0-10ubuntu2_amd64.deb"
apt install ./gcc-9-base_9.3.0-10ubuntu2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/libgmp10_6.2.0+dfsg-4_amd64.deb"
apt install ./libgmp10_6.2.0+dfsg-4_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/i/isl/libisl22_0.22.1-1_amd64.deb"
apt install ./libisl22_0.22.1-1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/m/mpclib3/libmpc3_1.1.0-1_amd64.deb"
apt install ./libmpc3_1.1.0-1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/m/mpfr4/libmpfr6_4.0.2-1_amd64.deb"
apt install ./libmpfr6_4.0.2-1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-9/cpp-9_9.3.0-10ubuntu2_amd64.deb"
apt install ./cpp-9_9.3.0-10ubuntu2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-10/libcc1-0_10-20200411-0ubuntu1_amd64.deb"
apt install ./libcc1-0_10-20200411-0ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-9/libasan5_9.3.0-10ubuntu2_amd64.deb"
apt install ./libasan5_9.3.0-10ubuntu2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-10/libatomic1_10-20200411-0ubuntu1_amd64.deb"
apt install ./libatomic1_10-20200411-0ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-10/libgomp1_10-20200411-0ubuntu1_amd64.deb"
apt install ./libgomp1_10-20200411-0ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-10/libitm1_10-20200411-0ubuntu1_amd64.deb"
apt install ./libitm1_10-20200411-0ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-10/liblsan0_10-20200411-0ubuntu1_amd64.deb"
apt install ./liblsan0_10-20200411-0ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-10/libquadmath0_10-20200411-0ubuntu1_amd64.deb"
apt install ./libquadmath0_10-20200411-0ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-10/libtsan0_10-20200411-0ubuntu1_amd64.deb"
apt install ./libtsan0_10-20200411-0ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-10/libubsan1_10-20200411-0ubuntu1_amd64.deb"
apt install ./libubsan1_10-20200411-0ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-9/libgcc-9-dev_9.3.0-10ubuntu2_amd64.deb"
apt install ./libgcc-9-dev_9.3.0-10ubuntu2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-9/gcc-9_9.3.0-10ubuntu2_amd64.deb"
apt install ./gcc-9_9.3.0-10ubuntu2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/libc-dev-bin_2.31-0ubuntu9_amd64.deb"
apt install ./libc-dev-bin_2.31-0ubuntu9_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcrypt/libcrypt-dev_4.4.10-10ubuntu4_amd64.deb"
apt install ./libcrypt-dev_4.4.10-10ubuntu4_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/l/linux/linux-libc-dev_5.4.0-26.30_amd64.deb"
apt install ./linux-libc-dev_5.4.0-26.30_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/libc6-dev_2.31-0ubuntu9_amd64.deb"
apt install ./libc6-dev_2.31-0ubuntu9_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-9/libgfortran-9-dev_9.3.0-10ubuntu2_amd64.deb"
apt install ./libgfortran-9-dev_9.3.0-10ubuntu2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-9/gfortran-9_9.3.0-10ubuntu2_amd64.deb"
apt install ./gfortran-9_9.3.0-10ubuntu2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/universe/a/atlas/libatlas3-base_3.10.3-8ubuntu7_amd64.deb"
apt install ./libatlas3-base_3.10.3-8ubuntu7_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/l/lapack/libblas-dev_3.9.0-1build1_amd64.deb"
apt install ./libblas-dev_3.9.0-1build1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/libc6-dev_2.31-0ubuntu9_amd64.deb"
apt install ./libc6-dev_2.31-0ubuntu9_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/libtinfo6_6.2-0ubuntu2_amd64.deb"
apt install ./libtinfo6_6.2-0ubuntu2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/libncurses6_6.2-0ubuntu2_amd64.deb"
apt install ./libncurses6_6.2-0ubuntu2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/libncursesw6_6.2-0ubuntu2_amd64.deb"
apt install ./libncursesw6_6.2-0ubuntu2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses-bin_6.2-0ubuntu2_amd64.deb"
apt install ./ncurses-bin_6.2-0ubuntu2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/libncurses-dev_6.2-0ubuntu2_amd64.deb"
apt install ./libncurses-dev_6.2-0ubuntu2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/libncurses5-dev_6.2-0ubuntu2_amd64.deb"
apt install ./libncurses5-dev_6.2-0ubuntu2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/l/lapack/liblapack-dev_3.9.0-1build1_amd64.deb"
apt install ./liblapack-dev_3.9.0-1build1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/t/texinfo/install-info_6.7.0.dfsg.2-5_amd64.deb"
apt install ./install-info_6.7.0.dfsg.2-5_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/r/readline/readline-common_8.0-4_all.deb"
apt install ./readline-common_8.0-4_all.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/r/readline/libreadline8_8.0-4_amd64.deb"
apt install ./libreadline8_8.0-4_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg-turbo/libjpeg-turbo8_2.0.3-0ubuntu1_amd64.deb"
apt install ./libjpeg-turbo8_2.0.3-0ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/r/readline/libreadline-dev_8.0-4_amd64.deb"
apt install ./libreadline-dev_8.0-4_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg-turbo/libjpeg-turbo8-dev_2.0.3-0ubuntu1_amd64.deb"
apt install ./libjpeg-turbo8-dev_2.0.3-0ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg8-empty/libjpeg8_8c-2ubuntu8_amd64.deb"
apt install ./libjpeg8_8c-2ubuntu8_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg8-empty/libjpeg8-dev_8c-2ubuntu8_amd64.deb"
apt install ./libjpeg8-dev_8c-2ubuntu8_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/p/pcre2/libpcre2-16-0_10.34-7_amd64.deb"
apt install ./libpcre2-16-0_10.34-7_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/p/pcre2/libpcre2-32-0_10.34-7_amd64.deb"
apt install ./libpcre2-32-0_10.34-7_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/p/pcre2/libpcre2-posix2_10.34-7_amd64.deb"
apt install ./libpcre2-posix2_10.34-7_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg8-empty/libjpeg-dev_8c-2ubuntu8_amd64.deb"
apt install ./libjpeg-dev_8c-2ubuntu8_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/libpcre16-3_8.39-12build1_amd64.deb"
apt install ./libpcre16-3_8.39-12build1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/libpcre3_8.39-12build1_amd64.deb"
apt install ./libpcre3_8.39-12build1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/libpcre32-3_8.39-12build1_amd64.deb"
apt install ./libpcre32-3_8.39-12build1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/libpcre3_8.39-12build1_amd64.deb"
apt install ./libpcre3_8.39-12build1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/libpcrecpp0v5_8.39-12build1_amd64.deb"
apt install ./libpcrecpp0v5_8.39-12build1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/libpcre3-dev_8.39-12build1_amd64.deb"
apt install ./libpcre3-dev_8.39-12build1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib1g-dev_1.2.11.dfsg-2ubuntu1_amd64.deb"
apt install ./zlib1g-dev_1.2.11.dfsg-2ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng1.6/libpng-dev_1.6.37-2_amd64.deb"
apt install ./libpng-dev_1.6.37-2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/libbz2-1.0_1.0.8-2_amd64.deb"
apt install ./libbz2-1.0_1.0.8-2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/libbz2-dev_1.0.8-2_amd64.deb"
apt install ./libbz2-dev_1.0.8-2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/p/pcre2/libpcre2-dev_10.34-7_amd64.deb"
apt install ./libpcre2-dev_10.34-7_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/universe/a/atlas/libatlas-base-dev_3.10.3-8ubuntu7_amd64.deb"
apt install ./libatlas-base-dev_3.10.3-8ubuntu7_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/liblzma5_5.2.4-1_amd64.deb"
apt install ./liblzma5_5.2.4-1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/liblzma-dev_5.2.4-1_amd64.deb"
apt install ./liblzma-dev_5.2.4-1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/i/icu/libicu66_66.1-2ubuntu2_amd64.deb"
apt install ./libicu66_66.1-2ubuntu2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/i/icu/icu-devtools_66.1-2ubuntu2_amd64.deb"
apt install ./icu-devtools_66.1-2ubuntu2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/i/icu/libicu-dev_66.1-2ubuntu2_amd64.deb"
apt install ./libicu-dev_66.1-2ubuntu2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/universe/a/atlas/libatlas3-base_3.10.3-8ubuntu7_amd64.deb"
apt install ./libatlas3-base_3.10.3-8ubuntu7_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2_amd64.deb"
apt install ./libssl1.1_1.1.1f-1ubuntu2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_1.1.1f-1ubuntu2_amd64.deb"
apt install ./openssl_1.1.1f-1ubuntu2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/c/ca-certificates/ca-certificates_20190110ubuntu1_all.deb"
apt install ./ca-certificates_20190110ubuntu1_all.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/p/pixman/libpixman-1-0_0.38.4-0ubuntu1_amd64.deb"
apt install ./libpixman-1-0_0.38.4-0ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcb/libxcb-render0_1.14-2_amd64.deb"
apt install ./libxcb-render0_1.14-2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcb/libxcb-shm0_1.14-2_amd64.deb"
apt install ./libxcb-shm0_1.14-2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/c/cairo/libcairo2_1.16.0-4ubuntu1_amd64.deb"
apt install ./libcairo2_1.16.0-4ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/b/brotli/libbrotli1_1.0.7-6build1_amd64.deb"
apt install ./libbrotli1_1.0.7-6build1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/libcom-err2_1.45.5-2ubuntu1_amd64.deb"
apt install ./libcom-err2_1.45.5-2ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/libkrb5support0_1.17-6ubuntu4_amd64.deb"
apt install ./libkrb5support0_1.17-6ubuntu4_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/libk5crypto3_1.17-6ubuntu4_amd64.deb"
apt install ./libk5crypto3_1.17-6ubuntu4_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/libkeyutils1_1.6-6ubuntu1_amd64.deb"
apt install ./libkeyutils1_1.6-6ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/libkrb5-3_1.17-6ubuntu4_amd64.deb"
apt install ./libkrb5-3_1.17-6ubuntu4_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/libgssapi-krb5-2_1.17-6ubuntu4_amd64.deb"
apt install ./libgssapi-krb5-2_1.17-6ubuntu4_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring2_0.9.10-2_amd64.deb"
apt install ./libunistring2_0.9.10-2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2-0_2.2.0-2_amd64.deb"
apt install ./libidn2-0_2.2.0-2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/libnettle7_3.5.1+really3.5.1-2_amd64.deb"
apt install ./libnettle7_3.5.1+really3.5.1-2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/libhogweed5_3.5.1+really3.5.1-2_amd64.deb"
apt install ./libhogweed5_3.5.1+really3.5.1-2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi7_3.3-4_amd64.deb"
apt install ./libffi7_3.3-4_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/libp11-kit0_0.23.20-1build1_amd64.deb"
apt install ./libp11-kit0_0.23.20-1build1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.16.0-2_amd64.deb"
apt install ./libtasn1-6_4.16.0-2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/libgnutls30_3.6.13-2ubuntu1_amd64.deb"
apt install ./libgnutls30_3.6.13-2ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/h/heimdal/libroken18-heimdal_7.7.0+dfsg-1ubuntu1_amd64.deb"
apt install ./libroken18-heimdal_7.7.0+dfsg-1ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/h/heimdal/libasn1-8-heimdal_7.7.0+dfsg-1ubuntu1_amd64.deb"
apt install ./libasn1-8-heimdal_7.7.0+dfsg-1ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/h/heimdal/libheimbase1-heimdal_7.7.0+dfsg-1ubuntu1_amd64.deb"
apt install ./libheimbase1-heimdal_7.7.0+dfsg-1ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/h/heimdal/libhcrypto4-heimdal_7.7.0+dfsg-1ubuntu1_amd64.deb"
apt install ./libhcrypto4-heimdal_7.7.0+dfsg-1ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/h/heimdal/libwind0-heimdal_7.7.0+dfsg-1ubuntu1_amd64.deb"
apt install ./libwind0-heimdal_7.7.0+dfsg-1ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/h/heimdal/libhx509-5-heimdal_7.7.0+dfsg-1ubuntu1_amd64.deb"
apt install ./libhx509-5-heimdal_7.7.0+dfsg-1ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/libsqlite3-0_3.31.1-4_amd64.deb"
apt install ./libsqlite3-0_3.31.1-4_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/h/heimdal/libkrb5-26-heimdal_7.7.0+dfsg-1ubuntu1_amd64.deb"
apt install ./libkrb5-26-heimdal_7.7.0+dfsg-1ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/h/heimdal/libheimntlm0-heimdal_7.7.0+dfsg-1ubuntu1_amd64.deb"
apt install ./libheimntlm0-heimdal_7.7.0+dfsg-1ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/h/heimdal/libgssapi3-heimdal_7.7.0+dfsg-1ubuntu1_amd64.deb"
apt install ./libgssapi3-heimdal_7.7.0+dfsg-1ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/libldap-common_2.4.49+dfsg-2ubuntu1_all.deb"
apt install ./libldap-common_2.4.49+dfsg-2ubuntu1_all.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/libdb5.3_5.3.28+dfsg1-0.6ubuntu2_amd64.deb"
apt install ./libdb5.3_5.3.28+dfsg1-0.6ubuntu2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/libsasl2-modules-db_2.1.27+dfsg-2_amd64.deb"
apt install ./libsasl2-modules-db_2.1.27+dfsg-2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/libsasl2-2_2.1.27+dfsg-2_amd64.deb"
apt install ./libsasl2-2_2.1.27+dfsg-2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/libldap-2.4-2_2.4.49+dfsg-2ubuntu1_amd64.deb"
apt install ./libldap-2.4-2_2.4.49+dfsg-2ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/n/nghttp2/libnghttp2-14_1.40.0-1build1_amd64.deb"
apt install ./libnghttp2-14_1.40.0-1build1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/libp/libpsl/libpsl5_0.21.0-1ubuntu1_amd64.deb"
apt install ./libpsl5_0.21.0-1ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/r/rtmpdump/librtmp1_2.4+20151223.gitfa8646d.1-2build1_amd64.deb"
apt install ./librtmp1_2.4+20151223.gitfa8646d.1-2build1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/libs/libssh/libssh-4_0.9.3-2ubuntu2_amd64.deb"
apt install ./libssh-4_0.9.3-2ubuntu2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/c/curl/libcurl4_7.68.0-1ubuntu2_amd64.deb"
apt install ./libcurl4_7.68.0-1ubuntu2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/libblkid1_2.34-0.1ubuntu9_amd64.deb"
apt install ./libblkid1_2.34-0.1ubuntu9_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/libmount1_2.34-0.1ubuntu9_amd64.deb"
apt install ./libmount1_2.34-0.1ubuntu9_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/libglib2.0-0_2.64.2-1~fakesync1_amd64.deb"
apt install ./libglib2.0-0_2.64.2-1~fakesync1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/f/fontconfig/fontconfig_2.13.1-2ubuntu3_amd64.deb"
apt install ./fontconfig_2.13.1-2ubuntu3_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/f/fribidi/libfribidi0_1.0.8-2_amd64.deb"
apt install ./libfribidi0_1.0.8-2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/g/graphite2/libgraphite2-3_1.3.13-11build1_amd64.deb"
apt install ./libgraphite2-3_1.3.13-11build1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/h/harfbuzz/libharfbuzz0b_2.6.4-1ubuntu4_amd64.deb"
apt install ./libharfbuzz0b_2.6.4-1ubuntu4_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/libd/libdatrie/libdatrie1_0.2.12-3_amd64.deb"
apt install ./libdatrie1_0.2.12-3_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/libt/libthai/libthai-data_0.1.28-3_all.deb"
apt install ./libthai-data_0.1.28-3_all.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/libt/libthai/libthai0_0.1.28-3_amd64.deb"
apt install ./libthai0_0.1.28-3_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/p/pango1.0/libpango-1.0-0_1.44.7-2ubuntu4_amd64.deb"
apt install ./libpango-1.0-0_1.44.7-2ubuntu4_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/p/pango1.0/libpangoft2-1.0-0_1.44.7-2ubuntu4_amd64.deb"
apt install ./libpangoft2-1.0-0_1.44.7-2ubuntu4_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/p/pango1.0/libpangocairo-1.0-0_1.44.7-2ubuntu4_amd64.deb"
apt install ./libpangocairo-1.0-0_1.44.7-2ubuntu4_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/libp/libpaper/libpaper1_1.1.28_amd64.deb"
apt install ./libpaper1_1.1.28_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/libp/libpaper/libpaper-utils_1.1.28_amd64.deb"
apt install ./libpaper-utils_1.1.28_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/j/jbigkit/libjbig0_2.1-3.1build1_amd64.deb"
apt install ./libjbig0_2.1-3.1build1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp6_0.6.1-2_amd64.deb"
apt install ./libwebp6_0.6.1-2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/libz/libzstd/libzstd1_1.4.4+dfsg-3_amd64.deb"
apt install ./libzstd1_1.4.4+dfsg-3_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/t/tiff/libtiff5_4.1.0+git191117-2build1_amd64.deb"
apt install ./libtiff5_4.1.0+git191117-2build1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/x/xdg-utils/xdg-utils_1.1.3-2ubuntu1_all.deb"
apt install ./xdg-utils_1.1.3-2ubuntu1_all.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/libi/libice/libice6_1.0.10-0ubuntu1_amd64.deb"
apt install ./libice6_1.0.10-0ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/libs/libsm/libsm6_1.2.3-1_amd64.deb"
apt install ./libsm6_1.2.3-1_amd64.deb 
wget "http://archive.ubuntu.com/ubuntu/pool/main/libx/libxt/libxt6_1.1.5-1_amd64.deb"
apt install ./libxt6_1.1.5-1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/universe/r/r-base/r-base-core_3.6.3-2_amd64.deb"
apt install ./r-base-core_3.6.3-2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/universe/r/r-cran-mass/r-cran-mass_7.3-51.5-2_amd64.deb"
apt install ./r-cran-mass_7.3-51.5-2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/universe/k/kernsmooth/r-cran-kernsmooth_2.23-16-1+1_amd64.deb"
apt install ./r-cran-kernsmooth_2.23-16-1+1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/universe/l/lattice/r-cran-lattice_0.20-40-1_amd64.deb"
apt install ./r-cran-lattice_0.20-40-1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/universe/r/rmatrix/r-cran-matrix_1.2-18-1_amd64.deb"
apt install ./r-cran-matrix_1.2-18-1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/universe/n/nlme/r-cran-nlme_3.1.144-1_amd64.deb"
apt install ./r-cran-nlme_3.1.144-1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/universe/m/mgcv/r-cran-mgcv_1.8-31-1_amd64.deb"
apt install ./r-cran-mgcv_1.8-31-1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/universe/s/survival/r-cran-survival_3.1-8-1_amd64.deb"
apt install ./r-cran-survival_3.1-8-1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/universe/r/rpart/r-cran-rpart_4.1-15-2_amd64.deb"
apt install ./r-cran-rpart_4.1-15-2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/universe/b/boot/r-cran-boot_1.3-24-2_all.deb"
apt install ./r-cran-boot_1.3-24-2_all.deb
wget "http://archive.ubuntu.com/ubuntu/pool/universe/r/r-cran-class/r-cran-class_7.3-15-1_amd64.deb"
apt install ./r-cran-class_7.3-15-1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/universe/c/cluster/r-cran-cluster_2.1.0-2_amd64.deb"
apt install ./r-cran-cluster_2.1.0-2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/universe/c/codetools/r-cran-codetools_0.2-16-1_all.deb"
apt install ./r-cran-codetools_0.2-16-1_all.deb
wget "http://archive.ubuntu.com/ubuntu/pool/universe/f/foreign/r-cran-foreign_0.8.75-1_amd64.deb"
apt install ./r-cran-foreign_0.8.75-1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/universe/r/r-cran-nnet/r-cran-nnet_7.3-13-1_amd64.deb"
apt install ./r-cran-nnet_7.3-13-1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/universe/r/r-cran-spatial/r-cran-spatial_7.3-11-2build2_amd64.deb"
apt install ./r-cran-spatial_7.3-11-2build2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/universe/r/r-base/r-doc-html_3.6.3-2_all.deb"
apt install ./r-doc-html_3.6.3-2_all.deb
wget "http://archive.ubuntu.com/ubuntu/pool/universe/r/r-base/r-recommended_3.6.3-2_all.deb"
apt install ./r-recommended_3.6.3-2_all.deb
wget "http://archive.ubuntu.com/ubuntu/pool/universe/r/r-base/r-base_3.6.3-2_all.deb"
apt install ./r-base_3.6.3-2_all.deb
dpkg --configure -a

#Installing RStudio AND packages(+dependencies) for Ubuntu 20.04LTS
wget "http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/libc6-i386_2.31-0ubuntu9_amd64.deb"
apt install ./libc6-i386_2.31-0ubuntu9_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-10/lib32gcc-s1_10-20200411-0ubuntu1_amd64.deb"
apt install ./lib32gcc-s1_10-20200411-0ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-10/lib32gcc1_10-20200411-0ubuntu1_amd64.deb"
apt install ./lib32gcc1_10-20200411-0ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-10/lib32stdc++6_10-20200411-0ubuntu1_amd64.deb"
apt install ./lib32stdc++6_10-20200411-0ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/libe/libedit/libedit2_3.1-20191231-1_amd64.deb"
apt install ./libedit2_3.1-20191231-1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/l/llvm-toolchain-10/libllvm10_10.0.0-4ubuntu1_amd64.deb"
apt install ./libllvm10_10.0.0-4ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/universe/l/llvm-toolchain-10/libclang-common-10-dev_10.0.0-4ubuntu1_amd64.deb"
apt install ./libclang-common-10-dev_10.0.0-4ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/universe/l/llvm-toolchain-10/libclang1-10_10.0.0-4ubuntu1_amd64.deb"
apt install ./libclang1-10_10.0.0-4ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/libg/libgc/libgc1c2_7.6.4-0.4ubuntu1_amd64.deb"
apt install ./libgc1c2_7.6.4-0.4ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/universe/g/gcc-10/libobjc4_10-20200411-0ubuntu1_amd64.deb"
apt install ./libobjc4_10-20200411-0ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/universe/g/gcc-9/libobjc-9-dev_9.3.0-10ubuntu2_amd64.deb"
apt install ./libobjc-9-dev_9.3.0-10ubuntu2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-9/libstdc++-9-dev_9.3.0-10ubuntu2_amd64.deb"
apt install ./libstdc++-9-dev_9.3.0-10ubuntu2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/universe/l/llvm-toolchain-10/libclang-10-dev_10.0.0-4ubuntu1_amd64.deb"
apt install ./libclang-10-dev_10.0.0-4ubuntu1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/universe/l/llvm-defaults/libclang-dev_10.0-50~exp1_amd64.deb"
apt install ./libclang-dev_10.0-50~exp1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcb/libxcb-xkb1_1.14-2_amd64.deb"
apt install ./libxcb-xkb1_1.14-2_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/x/xkeyboard-config/xkb-data_2.29-2_all.deb"
apt install ./xkb-data_2.29-2_all.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/libx/libxkbcommon/libxkbcommon0_0.10.0-1_amd64.deb"
apt install ./libxkbcommon0_0.10.0-1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/libx/libxkbcommon/libxkbcommon-x11-0_0.10.0-1_amd64.deb"
apt install ./libxkbcommon-x11-0_0.10.0-1_amd64.deb
wget "http://archive.ubuntu.com/ubuntu/pool/main/p/postgresql-12/libpq5_12.2-4_amd64.deb"
apt install ./libpq5_12.2-4_amd64.deb
dpkg --configure -a

apt-get install gdebi-core
wget "https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.4.1103-amd64.deb"
dpkg -i rstudio-1.4.1103-amd64.deb

#Add wxMacMolPlt to sources
#From https://brettbode.github.io/wxmacmolplt/downloads.html
echo "deb [trusted=yes] https://dl.bintray.com/brettbode/Xenial xenial main" >> /etc/apt/sources.list

#Generic installations
apt update
apt install cmake libjpeg62 python3-pip idle-python3.* vim git openbabel muscle jalview \
     autodock autogrid autodock-vina icedtea-*-plugin libjpeg62 exfat-utils flashplugin-installer \
     exfat-fuse gimp  plink emboss grace r-base-core r-base-dev gfortran libx11-dev wxmacmolplt \
     liblzma-dev csh libxml2 figtree dia pdb2pqr libxml2-dev libopenblas-dev cython \
     avogadro build-essential python-dev libpng-dev

#Python 3 libraries
pip3 install --upgrade pip && pip3 install numpy scipy matplotlib biopython python-igraph cython tensorflow\
     Theano keras joblib pandas jupyter ipywidgets sierrapy
pip3 install mdtraj

#Install MODELLER
cd ${sourcedir}
wget "https://salilab.org/modeller/9.21/modeller_9.21-1_amd64.deb"
dpkg -i modeller_9.21-1_amd64.deb 
sed -i 's/xxx/${modeller_key}/' /usr/lib/modeller9.21/modlib/modeller/config.py

#Install Open-Source PyMOL
#From https://pymolwiki.org/index.php/Linux_Install
cd ${sourcedir}
apt install python-pmw libglew-dev freeglut3-dev libfreetype6-dev libmsgpack-dev \
python-pyqt5.qtopengl libglm-dev
git clone https://github.com/schrodinger/pymol-open-source.git
cd pymol-open-source
prefix=${bindir}/bin/pymol-open-source-build
python2 setup.py build install --no-glut --home=$prefix
ln -s ${bindir}/bin/pymol-open-source-build/bin/pymol /home/${username}/bin/pymol

#ACPYPE (Preliminary; requires AmberTools to be installed & sourced)
cd ${sourcedir}
git clone https://github.com/t-/acpype acpype
ln -s ${sourcedir}/acpype/acpype.py /home/${username}/bin/acpype

###AmberTools#######
#firefox http://ambermd.org/cgi-bin/AmberTools16-get.pl
#tar jxvf AmberTools15.tar.bz2
#cd amber14
#export AMBERHOME=`pwd`
#./configure gnu
     # We recommend you say "yes" when asked to apply updates
#source amber.sh # Use amber.csh if you use tcsh or csh
#sudo make install
#echo "source $AMBERHOME/amber.sh" >> ~/.bashrc  # Add Amber to your environment

####################

#Installing GROMACS 2018.4
cd ${sourcedir}
wget "ftp://ftp.gromacs.org/pub/gromacs/gromacs-2018.4.tar.gz"
tar xfz gromacs-2018.4.tar.gz
cd gromacs-2018.4
mkdir build
cd build
cmake .. -DGMX_BUILD_OWN_FFTW=ON -DREGRESSIONTEST_DOWNLOAD=ON -DGMX_USE_TNG=off
make >> gromacs_make.log
make check >> gromacs_make_check.log
make install
echo ". /usr/local/gromacs/bin/GMXRC" >> /home/${username}/.bashrc

#Installing g_mmpbsa
cd ${sourcedir}
wget http://rashmikumari.github.io/g_mmpbsa/package/GMX51x_extrn_APBS/g_mmpbsa.tar.gz
wget http://rashmikumari.github.io/g_mmpbsa/package/scripts.tar.gz
tar zxvf g_mmpbsa.tar.gz
tar zxvf scripts.tar.gz
ln -s ${sourcedir}/g_mmpbsa/bin/g_mmpbsa ${bindir}/g_mmpbsa
ln -s ${sourcedir}/g_mmpbsa/bin/energy2bfac ${bindir}/energy2bfac
ln -s ${sourcedir}/scripts/MmPbSaDecomp.py ${bindir}/MmPbSaDecomp.py
ln -s ${sourcedir}/scripts/MmPbSaStat_correlation.py ${bindir}/MmPbSaStat_correlation.py
ln -s ${sourcedir}/scripts/MmPbSaStat.py ${bindir}/MmPbSaStat.py
echo "#APBS for g_mmpbsa" >> /home/${username}/.bashrc
echo "export APBS=$(which apbs)" >> /home/${username}/.bashrc

 
#Installing MGLTools
cd ${sourcedir}
wget "http://mgltools.scripps.edu/downloads/downloads/tars/releases/REL1.5.6/mgltools_x86_64Linux2_1.5.6.tar.gz"
tar -zxvf mgltools_x86_64Linux2_1.5.6.tar.gz
cd mgltools_x86_64Linux2_1.5.6
./install.sh
echo "#MGLTools setup">> /home/${username}/.bashrc
echo "alias pmv='${sourcedir}/mgltools_x86_64Linux2_1.5.6/bin/pmv'" >> /home/${username}/.bashrc
echo "alias adt='${sourcedir}/mgltools_x86_64Linux2_1.5.6/bin/adt'" >> /home/${username}/.bashrc
echo "alias vision='${sourcedir}/mgltools_x86_64Linux2_1.5.6/bin/vision'" >> /home/${username}/.bashrc
echo "alias pythonsh='${sourcedir}/mgltools_x86_64Linux2_1.5.6/bin/pythonsh'" >> /home/${username}/.bashrc
echo "export PYTHONPATH=$PYTHONPATH:${sourcedir}/mgltools_x86_64Linux2_1.5.6/MGLToolsPckgs" >> /home/${username}/.bashrc

#DiscoveryStudio
echo "Get DS from 'http://accelrys.com/products/collaborative-science/biovia-discovery-studio/visualization-download.php'" 
echo "Then Run ./activateDiscoveryStudio.sh"

#Gephi
cd ${sourcedir}
wget https://github.com/gephi/gephi/releases/download/v0.9.1/gephi-0.9.1-linux.tar.gz
tar zxvf gephi-0.9.1-linux.tar.gz

#Docker
apt remove docker docker-engine docker.io containerd runc
apt install apt-transport-https  ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
apt-key fingerprint 0EBFCD88
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get update
apt install docker-ce docker-ce-cli containerd.io

#MS fonts
#sudo apt install ttf-mscorefonts-installer
echo "Finished execution."
