require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
  test "unique_tag" do
    quote = FactoryGirl.create(:quote, :author => 'Hayli Chwang')
    expected = 'HC#' + quote.id.to_s
    actual = quote.unique_tag
    assert_equal expected, actual
  end
end
