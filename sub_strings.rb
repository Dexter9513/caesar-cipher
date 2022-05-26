dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

def substrings(original_string, dictionary)
    counter = Hash.new(0)
    dictionary.each do |key|
        string = original_string + ""
        while string.include?(key)
            string.sub!(key, '')
            counter[key] += 1
        end
    end
    counter
end

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)