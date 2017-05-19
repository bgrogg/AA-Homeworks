# quadratic search

def sluggish_octopus(fishes)
  fishes.each_with_index do |fish1, idx1|
    longest = true

    fishes.each_with_index do |fish2, idx2|
      next if idx1 == idx2
      longest = false if fish2.length > fish1.length

    end

    return fish1 if longest
  end
end



# n log n search

def dominant_octopus(fishes)
  # sort the array longest to shortest
  prc = Proc.new { |x, y| y.length <=> x.length }
  #return the first element
  fishes.merge_sort(&prc)[0]
end

class Array
  def merge_sort(&prc)
    prc ||= Proc.new { |x, y| x <=> y }

    return self if count <= 1

    midpoint = count / 2
    sorted_left = self.take(midpoint).merge_sort(&prc)
    sorted_right = self.drop(midpoint).merge_sort(&prc)

    Array.merge(sorted_left, sorted_right, &prc)
  end

  def self.merge(left, right, &prc)
    merged = []

    until left.empty? || right.empty?
      case prc.call(left.first, right.first)
      when -1
        merged << left.shift
      when 0
        merged << left.shift
      when 1
        merged << right.shift
      end
    end

    merged.concat(left)
    merged.concat(right)

    merged
  end
end

# linear search

def clever_octopus(fishes)
  #hold the biggest fish
  biggest = fishes.first
  fishes.each do |fish|
    if fish.length > biggest.length
      biggest = fish
    end
  end

  biggest
end


#linear octopus dance

def slow_dance(direction, tiles_array)
  tiles_array.each_with_index do |tile, idx|
    return idx if tile == direction
  end
end

#constant octopus dance
#use a hash for constant lookup

tiles_hash = {
  "up" => 0,
  "right-up" => 1,
  "right" => 2,
  "right-down" => 3,
  "down" => 4,
  "left-down" => 5,
  "left" => 6,
  "left-up" => 7
}

def fast_dance(direction, tiles_hash)
  tiles_hash(direction)
end
