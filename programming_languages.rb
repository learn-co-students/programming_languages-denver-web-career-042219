require "pry"

def reformat_languages(languages)
  # your code here
  # formatted = {}
  # languages.each do |key, value|
  #   lang_format.each do |languages.keys
  new_hash = {}
  languages.each do |type, lang|
    lang.each do |key, value|
      if new_hash[key] == nil
          new_hash[key] = value
          new_hash[key][:style] = []
      end
      new_hash[key][:style] << type
    end
      # binding.pry
      # languages[:oo].merge languages[:functional]

end
new_hash

end
#   lang_format = languages[:oo].merge languages[:functional]
#   lang_format.each do |key, value|
#     value[:style] = []
#   end
#   languages.each do |type, lang|
#     lang.each do |language, value|
#       value[:style] << type
#     end
#   end
# end
# languages[:oo].merge! languages[:functional] { |[:javascript][:style]| :oo, :functional] }
# h1.merge!(h2, h3) {|key, v1, v2| v1 }
#languages[:oo].merge langauges[:functional] {|javascript|}
