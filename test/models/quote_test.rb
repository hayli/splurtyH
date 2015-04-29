require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
  test "unique_tag" do
    quote = Quote.create(:author => "Hayli Chwang", :saying => "When nobody knows shit from Shinola")
    expected = 'HC#' + quote.id.to_s
    actual = quote.unique_tag
    assert_equal expected, actual
  end
end
