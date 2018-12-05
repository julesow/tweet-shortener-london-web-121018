require "pry"
# Write your code here.
def dictionary 
  d = {
    "hello" =>'hi',
"to" => '2',
"two" => '2',
"too" => '2',
"four"=> '4',
"for"=> '4',
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
          if word.downcase == k
            word.replace(v)
         end
       end
     end
      words.join(" ")
  end
  
  def bulk_tweet_shortener(tweets)
    #shortens each tweet and prints the results
    tweets.collect do |tweet| 
     puts word_substituter(tweet) 
    end
  
  end
  
  def selective_tweet_shortener(tweet)
    # shortens tweets that are more than 140 characters 
    # does not shorten tweets that are less than 130 characters 

    if tweet.chars.count> 140
      word_substituter(tweet) 
    else
      tweet
    end
  end 
  
  def shortened_tweet_truncator(tweet)
    # truncates tweets over 140 characters after shortening
    # does not shorten tweets shorter than 140 characters.
    if word_substituter(tweet).chars.length > 140
     tweet = word_substituter(tweet).chars[0..136].push('...').join("")
   else
      tweet
   end
      
  end
  
  
  
  
  
  
  
  
  
  