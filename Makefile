ARCH = $(shell uname)

ifeq ($(ARCH),Darwin)
	CXX	 = g++
	LINK     = g++
else
	CXX	 = g++-4.8
	LINK     = g++-4.8
endif

DEBUG    = -g
CXXFLAGS = $(shell fltk-config --cxxflags ) -std=c++11 -I.
LDFLAGS  = $(shell fltk-config --ldflags )
LDSTATIC = $(shell fltk-config --ldstaticflags )



.SUFFIXES: .o .cpp
%.o: %.cpp
	$(CXX) $(CXXFLAGS) $(DEBUG) -c $<


animals: animals.cpp
		$(CXX) -std=c++11 animals.cpp -o animals

hello: hello.cpp
	$(CXX) $(CXXFLAGS) hello.cpp $(LDFLAGS) -o hello


counter: counter.cpp
	$(CXX) $(CXXFLAGS) counter.cpp $(LDFLAGS) -o counter

ibutton: ibutton.cpp
	$(CXX) $(CXXFLAGS) ibutton.cpp $(LDFLAGS)  -o ibutton

	
clean: 
	rm -f *.o 2> /dev/null
	rm -f ibutton animals
        