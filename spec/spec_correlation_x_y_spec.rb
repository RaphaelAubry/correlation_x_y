# frozen_string_literal: true

# first test
require 'correlation_x_y'

describe Correlation do
  context 'When testing the Correlation class' do
    it 'When passing valid arguments should create an instance of Correlation' do
      serie_a = [1, 2, 3, 4, 5, 6]
      serie_b = [10, 20, 30, 40, 50, 60]
      correlation = Correlation.new(serie_a, serie_b)
      expect(correlation).to be_instance_of Correlation
    end
  end
end

describe 'Check data input' do
  context 'When creating Correlation instance' do
    it 'When passing 2 arrays with different sizes should raise an ArgumentError' do
      serie_a = [1, 2, 3, 4, 6]
      serie_b = [10, 20, 30, 40, 50, 60]
      expect { Check.series_sizes_valid?(serie_a, serie_b) }.to raise_error(ArgumentError, 'Array sizes must be equal')
    end
  end
end
