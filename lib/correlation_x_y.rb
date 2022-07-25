# frozen_string_literal: true

require_relative 'serie'
require_relative 'parameters'
require_relative 'equation'

# class
class Correlation
  attr_accessor :serie_a, :serie_b, :coefficient, :equation, :parameters

  def initialize(serie_a, serie_b)
    @serie_a = Serie.new(serie_a)
    @serie_b = Serie.new(serie_b)
    @parameters = Parameters.new(Serie.new(serie_a), Serie.new(serie_b)) if Check.series_sizes_valid?(serie_a, serie_b)
    @dependance = dependance
    @equation = Equation.new(Parameters.new(@serie_a, @serie_b)) if @dependance == 'true'
  end

  def dependance
    (-0.8..0.8).include?(@parameters.coefficient) ? 'false' : 'true'
  end
end
