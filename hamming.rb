class Hamming

  def initialize
  end

  def self.compute(strand_one, strand_two)
    new.compute(strand_one, strand_two)
  end

  def compute(strand_one, strand_two)
    distance = 0
    # Convert strands to char arrays
    first_strand = strand_one.chars
    second_strand = strand_two.chars

    # zip the two arrays for easy comparison
    comparison_array = first_strand.zip(second_strand)

    # check for differences
    # @distance += 1 for each difference
    comparison_array.each do |i|
      next if i[0] === i[1]
      next if i[0].nil? || i[1].nil?
      distance +=1
    end

    # return the current distance
    distance
  end
end
