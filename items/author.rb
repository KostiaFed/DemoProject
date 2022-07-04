# Show the author of a chosen kata/test
# Works as follows:
# entry example: "author 'Hryniv_kata1'" (no file extension needed)
# returns name, surname and github of the author

class Author
  def run(file)
    surname = file.split("_")[0].downcase
    case surname
    when "hryniv"
      if File.file?("katas/AnastasiiaHryniv/#{file}.rb") ||
         File.file?("spec/AnastasiiaHryniv/#{file}.rb")
        author = "Author: Anastasiia Hryniv\nGithub: anastasiiahryniv"
      end
    when "stegnytskyi"
      if File.file?("katas/AndriiStegnytskyi/#{file}.rb") ||
         File.file?("spec/AndriiStegnytskyi/#{file}.rb")
        author = "Author: Andrii Stegnytskyi\nGithub: AndriiStegnytskyi"
      end
    when "koval"
      if File.file?("katas/IrynaKoval/#{file}.rb") ||
         File.file?("spec/IrynaKoval/#{file}.rb")
        author = "Author: Irina Koval\nGithub: Beerka1"
      end
    when "fedorenko"
      if File.file?("katas/KostiaFedorenko/#{file}.rb") ||
         File.file?("spec/KostiaFedorenko/#{file}.rb")
        author = "Author: Kostia Fedorenko\nGithub: KostiaFed"
      end
    when "sivachenko"
      if File.file?("katas/OlexiySivachenko/#{file}.rb") ||
         File.file?("spec/OlexiySivachenko/#{file}.rb")
        author = "Author: Olexiy Sivachenko\nGithub: malk1ss"
      end
    when "korkonishko"
      if File.file?("katas/RomanKorkonishko/#{file}.rb") ||
         File.file?("spec/RomanKorkonishko/#{file}.rb")
        author = "Author: Roman Korkonishko\nGithub: kromch"
      end
    when "malko"
      if File.file?("katas/VladMalko/#{file}.rb") ||
         File.file?("spec/VladMalko/#{file}.rb")
        author = "Author: Vlad Malko\nGithub: PrincTwilig"
      end
    when "denysiuk"
      if File.file?("katas/VladyslavDenysiuk/#{file}.rb") ||
         File.file?("spec/VladyslavDenysiuk/#{file}.rb")
        author = "Author: Vladyslav Denysiuk\nGithub: denysiuk"
      end
    when "shevtsov"
      if File.file?("katas/DmitriyShevtsov/#{file}.rb") ||
         File.file?("spec/DmitriyShevtsov/#{file}.rb")
        author = "Author: Dmitriy Shevtsov\nGithub: DmitriyShev"
      end
    when "farat"
      if File.file?("katas/OleksiiFarat/#{file}.rb") ||
         File.file?("spec/OleksiiFarat/#{file}.rb")
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
