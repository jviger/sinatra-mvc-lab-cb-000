class PigLatinizer
  
  attr_accessor :user_text
  
   def initialize(user_text)
  
      @user_text = user_text.downcase
  
   end
  
  
   def latinize
     latinized = ""
     array = @user_text.split(/[aeiou]/)
     if ["a","e","i","o","u"].include?(@user_text[0,1])
       latinized = @user_text + "ay"
     else 
       latinized = @user_text.sub!(array[0],"") + array[0] + "ay"
     end
     latinized
     
   end 
  
end