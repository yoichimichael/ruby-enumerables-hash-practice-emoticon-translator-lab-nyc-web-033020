require "yaml"

def load_library(library)
  emoticon_library = YAML.load_file(library)
  meaning_array = emoticon_library.reduce([]) { |memo, (meaning, emo)| memo << meaning; memo }

end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
