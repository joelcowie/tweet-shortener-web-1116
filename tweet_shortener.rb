def dictionary(word)
  dictionary = {
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
  if dictionary.include?(word.downcase); dictionary[word.downcase]
  else return word
  end
end


def word_substituter(string)
  new_words = []
  array = string.split(" ")
  array.each do |word|
    new_words.push(dictionary(word))
  end
  new_words.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.chars.count > 140
    word_substituter(tweet)
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  short_tweet = word_substituter(tweet)
  if short_tweet.chars.count > 140
    return short_tweet[0..136] + "..."
  else
    return tweet
  end
end
