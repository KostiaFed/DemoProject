# Тут потрібно створити програму яка буде повертати результати всіх тестів
# Створіть клас Test і в ньому метод run
# return має бути результат всіх тестів в вигляді строки
class Tests
  def run
    files = get_files
    result = ""

    files.each do |folder|
      result += folder[:name].split("/")[-1] + ":\n"

      folder[:files].each do |file|
        result += " --" + file.split("/")[-1] + "\n"
      end
    end

    return result
  end

  def get_files
    folders_and_files = []
    folders = Dir['./spec/*']
    folders.each do |folder|
      if File.directory?(folder)
        folders_and_files << {name: folder, files: Dir["#{folder}/*"]}
      end
    end
    folders_and_files
  end
end