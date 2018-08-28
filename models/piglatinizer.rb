class PigLatinizer
  
  attr_accessor :user_text
  
   def initialize(user_text)
  
      @user_text = user_text
  
   end
  
  
   def latinize
     latinized = ""
     if ["a","e","i","o","u"].include?(@user_text[0,1])
       latinized = @user_text + "ay"
     end
     latinized
     
   end 
  
end