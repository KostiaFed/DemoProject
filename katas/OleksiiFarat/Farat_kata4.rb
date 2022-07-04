class Rainfall
  def initialize(town, strng)
    @data = parse_data(town, strng)
  end
  
  def mean
    avg(@data)
  end

  def variance
    avg(@data.map {|n| (n - mean) ** 2 })
  end
  
  private
  def avg(arr)
    arr.reduce(:+) / arr.length rescue -1
  end
  
  def parse_data(town, strng)
    match = strng.match(/#{town}:Jan (.*)/)
    match.nil? ? [] : match[1].split(/,\w+\s/).map(&:to_f)
  end
end

def mean(town, strng)
  Rainfall.new(town, strng).mean
end

def variance(town, strng)
  Rainfall.new(town, strng).variance
end
