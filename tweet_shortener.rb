require "pry"
# Write your code here.
def dictionary {
    "hello" =>'hi',
"to, two, too" => '2',
"for, four"=> '4',
'be' => 'b',
'you'=>'u',
"at" => "@" ,
"and" => "&"
  }
 end  
  def word_substituter(tweet)
        
       words = tweet.split("")
       words.each do |word|
         dictionary.each do |k,v|
          if word.include?(dictionary.keys)
      
           words << word.replace(dictionary[v])
         end
       end
      puts tweet = words.join(" ")
   end
    
  end
  