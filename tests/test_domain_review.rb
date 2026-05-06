require 'minitest/autorun'
require 'domain_review'

class DomainReviewTest < Minitest::Test
  def test_domain_lane
    item = PlumeParseJsonLab::DomainReview.new(signal: 43, slack: 21, drag: 26, confidence: 63)
    assert_equal 92, PlumeParseJsonLab.domain_review_score(item)
    assert_equal "hold", PlumeParseJsonLab.domain_review_lane(item)
  end
end
