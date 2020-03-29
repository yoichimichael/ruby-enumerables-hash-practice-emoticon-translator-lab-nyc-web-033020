require "yaml"

def load_library(library)
  emoticon_hash = YAML.load_file(library)

  new_hash = { :get_meaning => {}, :get_emoticon => {} }

  emoticon_hash.reduce(new_hash) do |memo, (key, value)|
    memo[:get_meaning][value[1]] = key
    memo[:get_emoticon][value[0]] = value[1]
    memo
  end

  new_hash
end

def get_japanese_emoticon(library, emoticon)
  library_hash = load_library(library)
end

def get_english_meaning
  # code goes here
end
