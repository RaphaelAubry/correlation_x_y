# frozen_string_literal: true

require_relative 'serie'

# object Coefficient
class Parameters
  attr_accessor :coefficient, :a, :b

  def initialize(serie_a, serie_b)
    @a = calculate_a(serie_a, serie_b)
    @b = calculate_b(serie_a, serie_b)
    @coefficient = calculate_coefficient(serie_a, serie_b)
  end

  # calculation of the slope between the 2 series
  # sigma(xi - moy_x)(yi - moy y) / squared_root(sigma(xi - moy_x)^2) x squared_root(sigma(yi - moy_y)^2))
  def calculate_coefficient(serie_a, serie_b)
    sum_prod_variances = prod_variances(serie_a, serie_b).reduce(:+)
    squared_root_sum_variances_x = serie_a.squared_variances.reduce(:+)**0.5
    squared_root_sum_variances_y = serie_b.squared_variances.reduce(:+)**0.5
    sum_prod_variances / (squared_root_sum_variances_x * squared_root_sum_variances_y)
  end

  # array of (xi - moy_x)(yi - moy_y) i periods
  # i periods
  def prod_variances(serie_a, serie_b)
    prod_variances = serie_a.variances.zip(serie_b.variances)
    prod_variances.map! { |couple| couple.reduce(:*) }
    prod_variances
  end

  def calculate_a(serie_a, serie_b)
    prod_variances(serie_a, serie_b).reduce(:+) / serie_a.squared_variances.reduce(:+)
  end

  def calculate_b(serie_a, serie_b)
    serie_b.average - (@a * serie_a.average)
  end
end
