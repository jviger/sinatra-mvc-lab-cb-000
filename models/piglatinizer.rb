class PigLatinizer
  
  attr_accessor: :user_text
  
   def initialize(user_text)
  
      @user_text = user_text
  
   end
  
  
   def latinize
     latinized = ""
     if ["a","e","i","o","u"].include?(@user_text.first)
       latinized = @user_text + "ay"
     
   end 
  
end