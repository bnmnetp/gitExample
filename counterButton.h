#include <FL/Fl_Button.H>
#include <string>

class CounterButton : public Fl_Button {

private: 
  int count;

public:
 CounterButton(int x, int y, int w, int h, char *label, int init) 
 : Fl_Button(x,y,w,h,label) {
   this->count = init;
   this->copy_label(std::to_string(init).c_str());
 }
 
    int getCount() { return count; }
     void increment() { count++; }

     static void beepcb(Fl_Widget *w, void *) {
         CounterButton *myButton = (CounterButton *)w;
         myButton->increment();
         int count = myButton->getCount();
         myButton->copy_label(std::to_string(count).c_str());
     }

};
