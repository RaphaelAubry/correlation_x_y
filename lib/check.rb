# frozen_string_literal: true

# check the data input
module Check
  def self.valid?(data)
    raise ArgumentError, 'Data class must be array' unless data.is_a?(Array)
    raise ArgumentError, 'Must be array of integers or floats' if data.any?(String)

    true
  end

  def self.series_sizes_valid?(serie_a, serie_b)
    raise ArgumentError, 'Array sizes must be equal' unless serie_a.size == serie_b.size

    true
  end
end
