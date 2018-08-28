class PigLatinizer
  
  attr_accessor :user_phrase
  
   def initialize
     
    @user_phrase = user_phrase.downcase
      
  
   end
  
 
   def latinize
     latinized = ""
     array = @user_phrase.split(/[aeiou]/)
     if ["a","e","i","o","u"].include?(@user_phrase[0,1])
       latinized = @user_phrase + "ay"
     else 
       latinized = @user_phrase.sub!(array[0],"") + array[0] + "ay"
     end
     latinized
     
   end 
  
end