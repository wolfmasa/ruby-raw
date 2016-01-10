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
    @opt = {debug_mode: true}
    #@opt = {}
  end

  def test_option_is_nil
    assert(Rubyraw::Raw.new.decode(@filename, nil)==0)
    FileUtils.rm(@ppm)
  end

  def test_filepath_input_decode_function
    assert(Rubyraw::Raw.new.decode(@filename, @opt)==0)
    assert(File.exist?(@ppm))
    FileUtils.rm(@ppm)
  end

  def test_option_print_message
    @opt[:print_message] = true
    assert(Rubyraw::Raw.new.decode(@filename, @opt)==0)
    assert(File.exist?(@ppm))
    FileUtils.rm(@ppm)
  end

  def test_apply_awb
    @opt[:apply_awb] = true
    assert(Rubyraw::Raw.new.decode(@filename, @opt)==0)
    assert(File.exist?(@ppm))
    FileUtils.rm(@ppm)
  end

  def test_write_tiff_insted_of_PPM
    @opt[:tiff_mode] = true
    assert(Rubyraw::Raw.new.decode(@filename, @opt)==0)
    assert(File.exist?(@tiff))
    FileUtils.rm(@tiff)
  end
end
