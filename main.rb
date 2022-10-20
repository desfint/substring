def substrings(string, subs_array)
    subs_count = Hash.new(0)
    
    string.split(" ").each do |word|
        word = word.downcase
        subs_array.each { |sub| subs_count[sub] += 1 if word.include?(sub) }
    end

    subs_count
end