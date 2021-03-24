class CountBits
  def initialize; end

  def b_string(int)
    int.to_s(2)
  end

  def count_bits(int)
    b_string(int).count('1')
  end
end
