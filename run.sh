gcc -shared -fPIC -o libworld.so world.c
gcc -shared -fPIC -o libhello.so hello.c -lworld -L.
gcc -o test test.c -lhello -L . -Wl,-rpath=.
./test

rm test
export LD_LIBRARY_PATH=./:$LD_LIBRARY_PATH
gcc -o test test.c -lhello -L . -lworld
./test

rm test	
gcc -o test test.c -lhello -L . -Wl,-rpath-link=.
./test
