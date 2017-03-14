#compile libsass.a 

cd libsass
# autoreconf --force --install
rm -rf lib
# ./configure --disable-tests --disable-static --enable-shared --prefix=`pwd`
make -j5 install
cd ..

#libsass/lib/libsass.a will be generated


#exec test



echo "Compiling..."
# export LD_LIBRARY_PATH=libsass/lib
cp libsass/lib/libsass.so.1 .
rm -rf operation1 operation1.o
gcc -c operation1.c -o operation1.o -I libsass/include
gcc -o operation1 operation1.o -L libsass/lib -lsass
#echo "foo { margin: foo(); }" > foo.scss
./operation1 foo.scss 
rm libsass.so.1