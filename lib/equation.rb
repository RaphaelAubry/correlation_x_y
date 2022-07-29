# frozen_string_literal: true

require_relative 'parameters'

# object linear Equation to get a and b
class Equation
  attr_accessor :definition

  def initialize(parameters)
    case parameters.coefficient
    when -1...-0.8
      @definition = "y = #{parameters.a}x + #{parameters.b}"
    when 0.8...1
      @definition = "y = -#{parameters.a}x + #{parameters.b}"
    end
  end
end
