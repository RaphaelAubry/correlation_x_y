# frozen_string_literal: true

require_relative 'check'

# object Serie to be used in Correlation class
class Serie
  attr_accessor :data, :size

  def initialize(data)
    @data = data if Check.valid?(data)
    @size = data.size
  end

  # moy_x
  def average
    @data.reduce(:+) / @data.size.to_f
  end

  # array of xi - moy_x
  # i periods
  def variances
    variances = []
    @data.each { |number| variances << number - average }
    variances
  end

  # array of (xi - moy_x)^2 i periods
  # i periods
  def squared_variances
    squared_variances = []
    @data.each { |number| squared_variances << (number - average)**2 }
    squared_variances
  end
end
