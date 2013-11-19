CXX	 = g++-4.8
DEBUG    = -g
CXXFLAGS = $(shell fltk-config --cxxflags ) -std=c++11 -I.
LDFLAGS  = $(shell fltk-config --ldflags )
LDSTATIC = $(shell fltk-config --ldstaticflags )
LINK     = g++-4.8


.SUFFIXES: .o .cpp
%.o: %.cpp
	$(CXX) $(CXXFLAGS) $(DEBUG) -c $<


animals: animals.cpp
		$(CXX) -std=c++11 animals.cpp -o animals

ibutton: ibutton.cpp
	$(CXX) $(CXXFLAGS) $(LDFLAGS) ibutton.cpp -o ibutton

	
clean: 
	rm -f *.o 2> /dev/null
	rm -f ibutton animals
        