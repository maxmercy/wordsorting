#Write a function that receives a sentence and returns 
#an array with the sentence's words sorted alphabetically. 
#Ignore case and punctuation.

#i/ get the sentence from users
#puts "Enter a sentence. Words will be sorted alphabetically."
#user_sentence = gets.chomp
user_sentence = "Fools fall for foolish follies."

#ii / Split it in words
#iii / Remove punctuation => /\W+/ all non alphanumerical caracter

user_sentence_array = user_sentence.split(/\W+/)

puts "Your Array"
print user_sentence_array 
puts ""

#iv / sort method that ignore cases but keep them as the initial

puts "Sorted directly:"
print user_sentence_array.sort
puts "\n"

#lets use the extended definition of "sort" 
puts "Sorted without influence of case with function 'sort':"
print user_sentence_array.sort{ |x,y| x.downcase <=> y.downcase }
puts "\n"

#Discover that with "sort_by" is shorter
puts "Sorted without  influence of case with function 'sort_by':"
print user_sentence_array.sort_by{ |x| x.downcase }
puts "\n"

