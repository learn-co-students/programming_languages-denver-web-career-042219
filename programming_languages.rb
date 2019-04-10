def reformat_languages(languages)
  new_hash = {}
  languages.each do | style, data | #style is :oo, etc; data is hash
    data.each do | name, type | #name is ruby, etc; type is hash
      if new_hash[name] == nil
      new_hash[name] = type
      new_hash[name][:style] = []
      end 
     new_hash[name][:style] << style
    end 
   end
  new_hash
end
