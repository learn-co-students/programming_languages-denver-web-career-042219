
def reformat_languages(languages)
  new_hash = {}

  languages.each do |style, languages_by_style|
    languages_by_style.each do |language, language_data|
      if !(new_hash.has_key?(language))
       language_data[:style]=[style]
       new_hash[language] = language_data
      else new_hash[language][:style]<< style
      end
    end
  end
return new_hash
end