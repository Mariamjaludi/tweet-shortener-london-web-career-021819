# Write your code here.
def dictionary

  dictionary_hash = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(string)
  dictionary_hash = dictionary
  array = string.split(' ')
  dictionary_key_array = dictionary_hash.keys
  dictionary_val_array = dictionary_hash.values
  i = 0
  j = 0
  result = []
  while i < array.length
    #check if each word in array matches one of the words in the dictionary
    #if it is a match, replace the word with the dictionary values
      j = 0
    while j < dictionary_val_array.length

      if array[i].downcase == dictionary_key_array[j]
        array[i] = dictionary_val_array[j]
      end
      j += 1
    end
    i += 1
  end
  array.join(' ')
end

def bulk_tweet_shortener(array_of_tweets)
  i = 0
  
  while i < array_of_tweets.length
    word_substituter(array_of_tweets[i])
    i += 1
  end

end
