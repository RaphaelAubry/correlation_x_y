# frozen_string_literal: true

require_relative 'parameters'

# object linear Equation to get a and b
class Equation
  attr_accessor :definition

  def initialize(parameters)
    if (-1...-0.8).include?(parameters.coefficient)
      @definition = "y = #{parameters.a}x + #{parameters.b}"
    elsif (0.8...1).include?(parameters.coefficient)
      @definition = "y = -#{parameters.a}x + #{parameters.b}"
    end
  end
end
