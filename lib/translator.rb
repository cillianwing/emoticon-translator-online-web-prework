# require modules here
require "yaml"

def load_library(file_path)
  # code goes here
  emoticons = YAML.load_file(file_path)
  lib_hash = {"get_meaning" => {}, "get_emoticon" => {}}
  emoticons.each do |key, value|
    lib_hash["get_meaning"][value[1]] => key.to_s}
    lib_hash["get_emoticon"][value[0]] => value[1]}
  end
  lib_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end