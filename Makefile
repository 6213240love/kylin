# Time-stamp: <[Makefile] modified by Guangxu Pan on 2017-02-07 13:53:34 ÐÇÆÚ¶þ>

CC  = gcc
CXX = g++
AR  = ar
LD  = ld

CFLAGS   = -Wall -fPIC
CXXFLAGS = -Wall -fPIC -std=c++11
ARFLAGS  = crs
LDFLAGS  = 
LDLIBS   =

CFLAGS += -O2 -s
CXXFLAGS += -O2 -s

I = -I.
L = -L.

%.d: %.cc
	$(CC) -MM $(CXXFLAGS) $(I) $< | sed 's,^$(*F).o[\s:]*,$*.o $@: ,g' > $@

%.o: %.cc
	$(CXX) $(CXXFLAGS) $(I) -c $< -o $@

%.o: %.cpp
	$(CXX) $(CXXFLAGS) $(I) -c $< -o $@

# --------------------------------------------------

all: myhelloworld
.PHONY : all

.PHONY: clean
clean : 
	-@find . -name "*.o" -type f | xargs -r /bin/rm -rf
	-@find . -name "*.d" -type f | xargs -r /bin/rm -rf
	-@rm -rf myhelloworld

# --------------------------------------------------
# bin: myhelloworld
# --------------------------------------------------
SRC_MYHELLOWORLD := $(wildcard *.cc)
BIN_MYHELLOWORLD  = myhelloworld
LIBS_MYHELLOWORLD = $(LIBS_COMMON)

OBJ_MYHELLOWORLD := $(SRC_MYHELLOWORLD:%.cc=%.o)
$(BIN_MYHELLOWORLD): $(OBJ_MYHELLOWORLD)
	@echo ">>> building $(BIN_MYHELLOWORLD) ......"
	$(CXX) $(CXXFLAGS) $(L) -o $@ $^ $(LIBS_MYHELLOWORLD)
	@echo ">>> build $(BIN_MYHELLOWORLD) ok"
