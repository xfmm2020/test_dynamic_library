cxx = g++
prom = test
source = test.c hello.c world.c 
CXXFLAGS =-O0 -Wall -g2 -ggdb

all: 
	$(cxx) -o $(prom) $(source) ${CXXFLAGS} 

.python : clean
clean:
	rm $(prom)
