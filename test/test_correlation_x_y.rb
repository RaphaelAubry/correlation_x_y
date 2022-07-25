# frozen_string_literal: true

require 'minitest/autorun'
require 'correlation_x_y'

# class test
class TestCorrelation < Minitest::Test
  def setup
    serie_a = [58, 59, 62, 65, 63, 72, 75, 77]
    serie_b = [290, 300, 310, 321, 315, 332, 340, 350]
    @correlation = Correlation.new(serie_a, serie_b)
  end

  def test_correlation_instance
    assert_instance_of Correlation, @correlation
  end

  def test_serie_a_instance
    assert_instance_of Serie, @correlation.serie_a
  end

  def test_serie_b_instance
    assert_instance_of Serie, @correlation.serie_b
  end

  def test_equation_instance
    assert_instance_of Equation, @correlation.equation
  end

  def test_parameters_instance
    assert_instance_of Parameters, @correlation.parameters
  end

  def test_correlation_dependance?
    assert_equal 'true', @correlation.dependance
  end

  def test_correlation_dependance_exist
    refute_nil @correlation.dependance
  end

  def test_correlation_serie_a_data
    assert_equal [58, 59, 62, 65, 63, 72, 75, 77], @correlation.serie_a.data
  end

  def test_correlation_serie_b_data
    assert_equal [290, 300, 310, 321, 315, 332, 340, 350], @correlation.serie_b.data
  end

  def test_correlation_parameters_coefficient
    assert_equal 0.9790150001673016, @correlation.parameters.coefficient
  end
end
