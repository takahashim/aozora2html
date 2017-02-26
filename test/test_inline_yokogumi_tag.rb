# encoding: utf-8
require 'test_helper'
require 'aozora2html'

class InlineYokogumiTagTest < Test::Unit::TestCase
  def setup
    stub(@parser).block_allowed_context?{true}
  end

  def test_yokogumi_new
    tag = Inline_yokogumi_tag.new(@parser,"aaa")
    assert_equal Inline_yokogumi_tag, tag.class
    assert_equal true, tag.kind_of?(Aozora2Html::Tag::Inline)
  end

  def test_to_s
    tag = Inline_yokogumi_tag.new(@parser,"テスト".encode("shift_jis"))
    assert_equal "<span class=\"yokogumi\">テスト</span>", tag.to_s.encode("utf-8")
  end

  def teardown
  end
end
