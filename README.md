The problem we try to solve is fast preview of skins by replacing variables without having to recompile the project, just by manipulating the output .css

So for that, first we need to hack libsass - and initially this is what is all about.

#install - download libsass and configure it

    git clone https://github.com/sass/libsass.git

    cd libsass
    #autoreconf --force --install
    #./configure --disable-tests --disable-static --enable-shared --prefix=`pwd`
    make -j5 install
    cd ..

#compile libsass and run the example

    sh run-operation1.sh

you can modify libsass sources as well as the operation1.c plugin and re-run them!

see run-operation1.sh for command line details