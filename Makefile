CXX		 = g++
DEBUG    = -g
CXXFLAGS = $(shell fltk-config --cxxflags ) -std=c++11 -I.
LDFLAGS  = $(shell fltk-config --ldflags )
LDSTATIC = $(shell fltk-config --ldstaticflags )
LINK     = g++


.SUFFIXES: .o .cpp
%.o: %.cpp
	$(CXX) $(CXXFLAGS) $(DEBUG) -c $<


animals: animals.cpp
		$(CXX) -std=c++11 animals.cpp -o animals

hello: hello.cpp
	$(CXX) $(CXXFLAGS) $(LDFLAGS) hello.cpp -o hello

ibutton: ibutton.cpp
	$(CXX) $(CXXFLAGS) $(LDFLAGS) ibutton.cpp -o ibutton

	
clean: 
	rm -f *.o 2> /dev/null
	rm -f ibutton animals
        