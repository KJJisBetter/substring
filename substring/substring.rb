dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substring(string, dictionary)
  text = string.split
  result = {}
  text.each do |word|
    dictionary.each do |dict|
      if word.downcase.include?(dict)
        result[dict] ||= 0
        result[dict] += 1
      end
    end
  end
  result
end

puts substring("THIS is a test below down string", dictionary)