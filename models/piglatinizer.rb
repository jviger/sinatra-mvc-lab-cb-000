class PigLatinizer
  
  attr_accessor :user_phrase
  
  def piglatinize(user_phrase)
    
  
 
   def piglatinize_word(user_phrase)
     latinized = ""
     array = string.split(/[aeiou]/)
     if ["a","e","i","o","u"].include?(user_phrase[0,1])
       latinized = user_phrase + "ay"
     else 
       latinized = user_phrase.sub!(array[0],"") + array[0] + "ay"
     end
     latinized
     
   end 
   
   def piglatinize_sentence(user_phrase)
    
      word_array = user_phrase.split(" ")
      word_array.collect { |x| x.piglatinize_word }
      word_array.join(" ")
     
   end 
  
end