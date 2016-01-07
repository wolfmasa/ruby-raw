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

require 'fileutils'

  def test_filepath_input_decode_function
    filename = "IMG_2112.CR2"
    ppm = File.basename(filename) + '.ppm'
    #FileUtils.rm(ppm) if File.exist?(ppm)
    assert(Rubyraw::Raw.new.decode(filename, {})==0)
    assert(! File.exist?(ppm))
  end

  def test_option_print_message
    filename = "IMG_2112.CR2"
    ppm = File.basename(filename) + '.ppm'
    assert(Rubyraw::Raw.new.decode(filename, {print_message: true})==0)
    assert(! File.exist?(ppm))
  end
=begin
  def test_verbose_decode_function
    filename = "IMG_2112.CR2"
    ppm = File.basename(filename) + '.ppm'
    FileUtils.rm(ppm) if File.exist?(ppm)
    assert(! ppm)
    assert(Rubyraw::Raw.new.decode(filename, {"print":true})==0)
    assert(File.exist?(ppm))
  end
=end
end
