//
// "$Id: button.cxx 9570 2012-06-02 08:59:45Z manolo $"
//
// Button/callback test program for the Fast Light Tool Kit (FLTK).
//
// Copyright 1998-2010 by Bill Spitzak and others.
//
// This library is free software. Distribution and use rights are outlined in
// the file "COPYING" which should have been included with this file.  If this
// file is missing or damaged, see the license at:
//
//     http://www.fltk.org/COPYING.php
//
// Please report all bugs and problems on the following page:
//
//     http://www.fltk.org/str.php
//

#include <cstdlib>
#include <cstdio>
#include <FL/Fl.H>
#include <FL/Fl_Window.H>
#include <FL/Fl_Button.H>
#include <FL/fl_ask.H>
#include "counterButton.h"


void exitcb(Fl_Widget *, void *) {
  exit(0);
}


int main(int argc, char ** argv) {
  Fl_Window *window = new Fl_Window(320,65);

  CounterButton *b1 = new CounterButton(20, 20, 80, 25, "&Beep",5);
  b1->callback(CounterButton::beepcb,0);

  CounterButton *b2 = new CounterButton(120,20, 80, 25, "&no op",10);
  b2->callback(CounterButton::beepcb,0);

  Fl_Button *b3 = new Fl_Button(220,20, 80, 25, "E&xit");
  b3->callback(exitcb,0);
  window->end();
  window->show(argc,argv);
  return Fl::run();
}





