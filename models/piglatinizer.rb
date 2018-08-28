class PigLatinizer
  
  attr_accessor :user_phrase
  
  
 
   def piglatinize(string)
     latinized = ""
     array = string.split(/[aeiou]/)
     if ["a","e","i","o","u"].include?(@user_phrase[0,1])
       latinized = @user_phrase + "ay"
     else 
       latinized = @user_phrase.sub!(array[0],"") + array[0] + "ay"
     end
     latinized
     
   end 
  
end