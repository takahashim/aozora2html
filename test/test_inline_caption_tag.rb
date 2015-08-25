# encoding: utf-8
require 'test_helper'
require 'aozora2html'

class InlineCaptionTagTest < Test::Unit::TestCase
  def setup
    stub(@parser).block_allowed_context?{true}
  end

  def test_caption_new
    tag = Inline_caption_tag.new(@parser,"aaa")
    assert_equal Inline_caption_tag, tag.class
    assert_equal true, tag.kind_of?(Inline_tag)
  end

  def test_to_s
    tag = Inline_caption_tag.new(@parser,"テスト".encode("shift_jis"))
    assert_equal "<span class=\"caption\">テスト</span>", tag.to_s.encode("utf-8")
  end

  def teardown
  end
end
