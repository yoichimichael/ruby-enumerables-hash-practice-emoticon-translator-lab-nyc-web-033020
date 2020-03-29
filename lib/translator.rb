require "yaml"

def load_library(library)
  emoticon_hash = YAML.load_file(library)
  meaning_array = emoticon_hash.reduce([]) { |memo, (meaning, emo)| memo << meaning; memo }
  emoticon_array = emoticon_hash.reduce([]) { |memo, (meaning, emo)| memo << emo; memo } 
  { :get_meaning => [], :get_emoticon}
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
