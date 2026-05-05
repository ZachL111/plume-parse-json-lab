require 'minitest/autorun'
require 'policy'

class PolicyTest < Minitest::Test
  def test_fixture_decisions
    signal_case_1 = PlumeParseJsonLab::Signal.new(demand: 86, capacity: 99, latency: 17, risk: 12, weight: 10)
    assert_equal 208, PlumeParseJsonLab.score(signal_case_1)
    assert_equal 'accept', PlumeParseJsonLab.classify(signal_case_1)
    signal_case_2 = PlumeParseJsonLab::Signal.new(demand: 87, capacity: 70, latency: 27, risk: 9, weight: 10)
    assert_equal 169, PlumeParseJsonLab.score(signal_case_2)
    assert_equal 'accept', PlumeParseJsonLab.classify(signal_case_2)
    signal_case_3 = PlumeParseJsonLab::Signal.new(demand: 84, capacity: 79, latency: 17, risk: 10, weight: 13)
    assert_equal 214, PlumeParseJsonLab.score(signal_case_3)
    assert_equal 'accept', PlumeParseJsonLab.classify(signal_case_3)
  end
end
