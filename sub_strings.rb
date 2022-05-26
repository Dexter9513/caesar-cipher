dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

def substrings(string, dictionary)
    string.downcase!
    dictionary.reduce(Hash.new(0)) do |hash, key|
        hash[key] = string.scan(key).length if string.include?(key)
        hash
    end
end

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
