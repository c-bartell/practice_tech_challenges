class DigitTiers
  def initialize
    
  end

  def sliced_digits(int, last_digit_index)
    int.to_s[0..(last_digit_index)]
  end

  def tiers(int)
    tiered = []
    counter = 0

    int.to_s.length.times do
      tiered << sliced_digits(int, counter)
      counter += 1
    end

    return tiered
  end
end
