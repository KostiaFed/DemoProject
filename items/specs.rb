class Specs
  SPEC = './spec'

  def run
    result = ''
    Dir.each_child(SPEC) {|directory|
      unless directory.include?('.rb')
        result += get_folder_with_files(directory)
      end
    }
    result
  end

  private

  def get_folder_with_files(directory)
    path = Dir.new("#{SPEC}/#{directory}")
    directory + get_files_from_folder(path)
  end

  def get_files_from_folder(path)
    files = ":\n"
    path.each_child {|file| 
      files += "  -#{file.gsub('.rb', '')}\n" 
    }
    files
  end
end