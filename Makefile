SOURCES=$(shell find -name '*.cpp')

all:
	g++ -static ${SOURCES} -o whaledo-demo

clean:
	find -name '*.o' -delete
	rm -f ./whaledo-demo
