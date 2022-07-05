# Тут потрібно створити програму яка буде повертати всі доступні кати в каталозі katas
# Створіть клас Tasks і в ньому метод run
# return має бути строка з назвами всіх каталогів в вигляді строки
# 1. Назва папки: ката1 ката2
# 2. Назва папки: ката1 ката2


class Tasks

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
    folders = Dir['./katas/*']

    folders.each do |folder|
      if File.directory?(folder)
        folders_and_files << {name: folder, files: Dir["#{folder}/*"]}
      end
    end

    return folders_and_files
  end
end