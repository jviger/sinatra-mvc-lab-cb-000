class PigLatinizer
  
  attr_accessor :user_text
  
   def initialize(user_text)
  
      @user_text = user_text.downcase
  
   end
  
  
   def latinize
     latinized = ""
     array = @user_text.split(/[aeiou]/)
     if ["a","e","i","o","u"].include?(array[0])
       latinized = @user_text + "ay"
     else 
       latinized = array.join[]
     end
     latinized
     
   end 
  
end