LIBS = $(shell pkg-config --cflags --libs opencv4) -lm

SOURCES = example_02-04.cpp

TARGET = example_02-04

CXX = g++

$(TARGET):$(SOURCES)
	$(CXX) $(SOURCES) $(LIBS) -o $@

clean:
	rm -f TARGET
