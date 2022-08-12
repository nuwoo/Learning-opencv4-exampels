LIBS = $(shell pkg-config --cflags --libs opencv4) -lm

SOURCES = exp_02_05_smooth_img.cpp

TARGET = exp_02_05_smooth_img

CXX = g++

$(TARGET):$(SOURCES)
	$(CXX) $(SOURCES) $(LIBS) -o $@

clean:
	rm -f TARGET
