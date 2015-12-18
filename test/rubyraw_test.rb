require 'test_helper'
require 'rubyraw/rubyraw'

class RubyrawTest < Minitest::Test
#  def test_that_it_has_a_version_number
#    refute_nil ::Rubyraw::VERSION
#  end
#
#  def test_it_does_something_useful
#    assert false
#  end

  def test_it_can_call_decode
    assert(Rubyraw::Raw.new.call_decode()==0)
  end

  def test_filepath_input_decode_function
    assert(Rubyraw::Raw.new.decode("hogehoge.CR2"))
  end
end
