require "pry"
# Write your code here.
def dictionary 
  d = {
    "hello" =>'hi',
"to" => '2',
"two" => '2',
"too" => '2',
"for"=> '4',
"four"=> '4',
'be' => 'b',
'you'=>'u',
"at" => "@" ,
"and" => "&"
  }
 end  
  def word_substituter(tweet)
        d=dictionary
       words = tweet.split(" ")
       words.collect do |word|
         dictionary.collect do |k,v|
          if word == k
            word.replace(v)
         end
       end
     end
      words.join(" ")
  end
  
  def bulk_tweet_shortener(tweets)
    #shortens each tweet and prints the results
    

    tweets.collect do |tweet| 
      binding.pry
      puts word_substituter(tweet) 
    end
  end
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  