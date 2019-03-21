require 'pry'

  # collect all the languages and types, put them in the new hash.  add the styles after
  #basically I just drilled down to the furthest point in each value and then reconstructed it by calling out elements
  #I had to create a new java style array to store the style elements which I could then pass in as a double attribute
  
def reformat_languages(languages)
  new_hash = {}
  java_style_array = Array.new

  languages.each do |style, language_data| # :oo , :ruby
    language_data.each do |language_name, language_name_value| # :ruby , {type =>}
      if language_name == :javascript
        java_style_array << style
      end
      language_name_value.each do |attribute, value|
        if language_name == :javascript
          new_hash[language_name] = {type:  value, style: java_style_array}
        else
          new_hash[language_name] = {type:  value, style: [style]}
        end

      end
    end
  end
  puts new_hash
  return new_hash
end















=begin













end
  languages.each do |style, languages|
    puts style
    puts languages
    languages.each do |language_name, type|
      new_hash = language_name
      type.each do |attribute, value|
        binding.pry
        new_hash[language_name] = value

        new_hash[language_name] = type
      #  new_hash[style] = style
        puts style

        #merge(:function)
      end
      end
    end
    puts new_hash
  end


  puts languages[:oo]
  new_hash[:ruby] = {}

  puts new_hash

# prop need to do some sort of destructive interation because it is formatted


  # your code here
end


def languages
  {
    :oo => {
      :ruby => {
        :type => "interpreted"
      },
      :javascript => {
        :type => "interpreted"
      },
      :python => {
        :type => "interpreted"
      },
      :java => {
        :type => "compiled"
      }
    },
    :functional => {
      :clojure => {
        :type => "compiled"
      },
      :erlang => {
        :type => "compiled"
      },
      :scala => {
        :type => "compiled"
      },
      :javascript => {
        :type => "interpreted"
      }

    }
  }

end

=end
