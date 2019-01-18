# require modules here
require "yaml"

def load_library(file_path)
  # code goes here
  emoticons = YAML.load_file(file_path)
  lib_hash = {"get_meaning" => {}, "get_emoticon" => {}}
  emoticons.each do |key, value|
    lib_hash["get_meaning"][value[1]] = key.to_s
    lib_hash["get_emoticon"][value[0]] = value[1]
  end
  lib_hash
end

def get_japanese_emoticon(file_path, emoticon)
  # code goes here
  lib_hash = load_library(file_path)
  lib_hash["get_emoticon"].each do |english, japanese|
    if english == emoticon 
      return japanese
    end
  end
  return "Sorry, that emoticon was not found"
  
end

def get_english_meaning(file_path, emoticon)
  # code goes here
  lib_hash = load_library(file_path)
  lib_hash["get_emoticon"].each do |english, japanese|
    if english == emoticon 
      
  
end