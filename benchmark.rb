# frozen_string_literal: true

require 'benchmark'
require_relative './src/resizer.rb'

result = Benchmark.realtime do
  Resizer.resize
end

puts "処理時間: #{result}s"