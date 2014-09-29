class FizzbuzzTwo

require 'CSV'

  def initialize(n)
    values = read_values
    fizzbuzz_adv(values, n)
  end

  def read_values
    CSV.read('./fizzbuzz.csv')
  end

  def fizzbuzz_adv(values, n)
    found = false
    row = 0
    while row < values.length
      if n % values[row][1].to_i == 0
        print values[row][0]
        found = true
      end
      row += 1
    end

    if found == false
      puts n
    else
      puts
    end
  end

end

FizzbuzzTwo.new(17)
