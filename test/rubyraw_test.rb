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

  def setup
    @filename = "IMG_2112.CR2"
    ext = File.extname(@filename)
    base = File.basename(@filename, ext)
    @ppm = base + '.ppm'
    @tiff = base + '.tiff'
  end

  def test_filepath_input_decode_function
    assert(Rubyraw::Raw.new.decode(@filename, {})==0)
    assert(File.exist?(@ppm))
    FileUtils.rm(@ppm)
  end

  def test_option_print_message
    assert(Rubyraw::Raw.new.decode(@filename, {print_message: true})==0)
    assert(File.exist?(@ppm))
    FileUtils.rm(@ppm)
  end

  def test_apply_awb
    assert(Rubyraw::Raw.new.decode(@filename, {apply_awb: true})==0)
    assert(File.exist?(@ppm))
    FileUtils.rm(@ppm)
  end

  def test_write_tiff_insted_of_PPM
    assert(Rubyraw::Raw.new.decode(@filename, {tiff_mode: true})==0)
    assert(File.exist?(@tiff))
    FileUtils.rm(@tiff)
  end
end
