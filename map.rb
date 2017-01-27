# Our Map class should have the following instance methods:
# assign(key, value), lookup(key), remove(key), show.
# Note that the assign method can be used to either create
# a new key-value pair or update the value for a pre-existing key.
# It's up to you to check whether a key currently exists!

class Map < Array
  def initialize
    @map = []
  end

  def assign(key, value)
    has_key = false
    has_key = true if map.any? { |arr| arr.first == key }

    if has_key
      @map.map.with_index do |arr, i|
        @map[i] = value if arr.first == key
      end
    else
      @map << [key, value]
    end
  end

  def lookup(key)
    @map.select { |arr| arr.first == key }.last
  end

  def remove(key)
    @map.delete(select { |arr| arr.first == key })
  end

  def show
    @map
  end
end

map = Map.new

map.assign('A', 1)
map.assign('B', 2)
map.assign('C', 3)
p map.show
p map.lookup('A')
map.assign('A', 4)
p map.lookup('B')
map.remove('A')
p map.show
