require "prime"

def gap(g, m, n)
  (m..n).each do |n|
    next unless n.prime?
    return [n, n + g] if (n + g).prime? && (n+1...n+g).none?(&:prime?)
  end
  nil
end
