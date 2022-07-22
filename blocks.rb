relevant_lines = []
File.open("reviews.txt") do |review_file|
  relevant_lines = review_file.find_all{ |string| string.include?"Truncated"}
end

reviews = relevant_lines.reject { |string| string.include? "--"}

# p relevant_lines
adjectives = []
def find_adj(string="")
  words = string.split(' ')
  index = words.find_index("is")
  adj = words[index + 1]
end

adjectives = reviews.map do |review|
  adjective = find_adj(review)
  "\'#{adjective.capitalize}\'"
end
puts "The critics agree, Truncated is"
puts adjectives

