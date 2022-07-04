# Show the author of a chosen kata/test
# Works as follows:
# entry example: "author 'Hryniv_kata1.rb'"
# returns name, surname and github of the author

class Author
  def run(file)
    surname = file.split("_")[0]
    case surname
    when "Hryniv"
      if File.file?("katas/AnastasiiaHryniv/#{file}") ||
         File.file?("spec/AnastasiiaHryniv/#{file}")
        author = "Author: Anastasiia Hryniv\nGithub: anastasiiahryniv"
      end
    when "Stegnytskyi"
      if File.file?("katas/AndriiStegnytskyi/#{file}") ||
         File.file?("spec/AndriiStegnytskyi/#{file}")
        author = "Author: Andrii Stegnytskyi\nGithub: AndriiStegnytskyi"
      end
    when "Koval"
      if File.file?("katas/IrynaKoval/#{file}") ||
         File.file?("spec/IrynaKoval/#{file}")
        author = "Author: Irina Koval\nGithub: Beerka1"
      end
    when "Fedorenko"
      if File.file?("katas/KostiaFedorenko/#{file}") ||
         File.file?("spec/KostiaFedorenko/#{file}")
        author = "Author: Kostia Fedorenko\nGithub: KostiaFed"
      end
    when "Sivachenko"
      if File.file?("katas/OlexiySivachenko/#{file}") ||
         File.file?("spec/OlexiySivachenko/#{file}")
        author = "Author: Olexiy Sivachenko\nGithub: malk1ss"
      end
    when "Korkonishko"
      if File.file?("katas/RomanKorkonishko/#{file}") ||
         File.file?("spec/RomanKorkonishko/#{file}")
        author = "Author: Roman Korkonishko\nGithub: kromch"
      end
    when "Malko"
      if File.file?("katas/VladMalko/#{file}") ||
         File.file?("spec/VladMalko/#{file}")
        author = "Author: Vlad Malko\nGithub: PrincTwilig"
      end
    when "Denysiuk"
      if File.file?("katas/VladyslavDenysiuk/#{file}") ||
         File.file?("spec/VladyslavDenysiuk/#{file}")
        author = "Author: Vladyslav Denysiuk\nGithub: denysiuk"
      end
    when "Shevtsov"
      if File.file?("katas/DmitriyShevtsov/#{file}") ||
         File.file?("spec/DmitriyShevtsov/#{file}")
        author = "Author: Dmitriy Shevtsov\nGithub: DmitriyShev"
      end
    when "Farat"
      if File.file?("katas/OleksiiFarat/#{file}") ||
         File.file?("spec/OleksiiFarat/#{file}")
        author = "Author: Oleksii Farat\nGithub: Oleksii-Farat"
      end
    end
    if author.nil?
      "Please enter a correct file"
    else
      author
    end
  end
end
