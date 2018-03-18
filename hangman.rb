module Hangman

    def step(suitable_letters, fields, secret_word)
        suitable_letters.each do |index|
            fields[index] = secret_word[index]
        end
    end

    def push_used_letter(used_letters, letter)
        used_letters << letter
        used_letters.uniq!
    end

    def choose_word(dictionary)
        dictionary.downcase!
        dictionary.split("\n").sample.split("").delete_if {|char| char == "\r"}
    end

    def find_files(catalog_name)
        file_names = Dir.glob("public/#{catalog_name}/*")
        file_names.map! do |name|
            name = name[catalog_name.length+8..-1]
        end
        return file_names
    end
        
    def load_file(catalog_name, file_name)
        return File.read("public/" + catalog_name + "/" + file_name)
    end

    def foo
        "bar"
    end

end