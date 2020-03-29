require "yaml"

def load_library(library)
  emoticon_hash = YAML.load_file(library)
  #word_array = emoticon_hash.reduce([]) { |memo, (meaning, emo)| memo << meaning; memo }
  #emoticon_array = emoticon_hash.reduce([]) { |memo, (meaning, emo)| memo << emo; memo }
  new_hash = { :get_meaning => {}, :get_emoticon => {} }

  emoticon_hash.reduce(new_hash) do |memo, (key, value)|
    memo[:get_meaning][value[1]] = ""
    memo
  end

  #puts japanese emoticon keys inside 'get_meaning'
  #emoticon_array.map { |pair| new_hash[:get_meaning][pair[1]] = "" }


  #ord_array.map { |word| new_hash[:get_meaning] = "" }

  new_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
