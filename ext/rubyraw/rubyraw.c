#include "rubyraw.h"

VALUE rb_mRubyraw;

void
Init_rubyraw(void)
{
  rb_mRubyraw = rb_define_module("Rubyraw");
}
