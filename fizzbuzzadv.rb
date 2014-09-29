class Fizzbuzztwo

require 'CSV'

  def initialize(n)
    values = readvalues
    fizzbuzzadv(values, n)
  end

  def readvalues
    CSV.read('./fizzbuzz.csv')
  end

  def fizzbuzzadv(values, n)
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

Fizzbuzztwo.new(17)
