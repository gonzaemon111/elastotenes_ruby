include Math

require 'benchmark'

result = Benchmark.realtime do
#素数の配列を返すメソッド
def fetch_prime_list(max)
  list = (2..max).to_a
  prime_list = []
  sqrt = Math.sqrt(max).floor

  while val = list.shift
    prime_list << val
    if val > sqrt
      break
    end
    list.delete_if{|num| num % val == 0}
  end
  return prime_list.concat(list)
end

#配列の出力
p fetch_prime_list(100)
end
puts "処理概要 #{result}s"

