sample = "Time:      7  15   30
Distance:  9  40  200"
input = "Time:        38     67     76     73
Distance:   234   1027   1157   1236"
lines = input.split("\n")
puts lines
time = lines[0].split(':')[1].scan(/\d+/).map(&:to_i)
distance = lines[1].split(':')[1].scan(/\d+/).map(&:to_i)

puts time.inspect
puts distance.inspect

total_err_margin = 1

time.each_with_index do |t, i|
  ways = 0
  for ti in (0..t)
    speed = ti
    dist_cove = speed * (t-ti)
    ways = (ways + 1) if dist_cove > distance[i]
  end
  total_err_margin = total_err_margin*ways
end

puts total_err_margin