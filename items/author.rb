# Show the author of a chosen kata/test
# Works as follows:
# entry example: "author 'Hryniv_kata1'" (no file extension needed)
# returns name, surname and github of the author

class Author
  def list_of_files
    # take all the files from katas folder with their paths
    files_array = Dir['katas/**/*'].map(&:downcase) + Dir['spec/**/*'].map(&:downcase)
    @files_results_array = []
    # remove their path, so that only name is left
    files_array.map do |item|
      item = File.basename(item)
      @files_results_array << item
    end
    @files_results_array
  end

  def run(file)
    if file.nil?
      'File is empty'
    end
    list_of_files
    surname = file.split('_')[0].downcase
    # checking if such file exists
    if @files_results_array.include?("#{file.downcase}.rb") ||
       @files_results_array.include?("#{file.downcase}_spec.rb")
      case surname
      when 'hryniv'
        author = "Author: Anastasiia Hryniv\nGithub: anastasiiahryniv"
      when 'stegnytskyi'
        author = "Author: Andrii Stegnytskyi\nGithub: AndriiStegnytskyi"
      when 'koval'
        author = "Author: Irina Koval\nGithub: Beerka1"
      when 'fedorenko'
        author = "Author: Kostia Fedorenko\nGithub: KostiaFed"
      when 'sivachenko'
        author = "Author: Olexiy Sivachenko\nGithub: malk1ss"
      when 'korkonishko'
        author = "Author: Roman Korkonishko\nGithub: kromch"
      when 'malko'
        author = "Author: Vlad Malko\nGithub: PrincTwilig"
      when 'denysiuk'
        author = "Author: Vladyslav Denysiuk\nGithub: denysiuk"
      when 'shevtsov'
        author = "Author: Dmitriy Shevtsov\nGithub: DmitriyShev"
      when 'farat'
        author = "Author: Oleksii Farat\nGithub: Oleksii-Farat"
      end
      author
    elsif @files_results_array.nil?
      'File is empty'
    else
      'Please enter a correct file'
    end
  end
end
