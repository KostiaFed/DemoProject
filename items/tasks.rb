# Тут потрібно створити програму яка буде повертати всі доступні кати в каталозі katas
# Створіть клас Tasks і в ньому метод run
# return має бути строка з назвами всіх каталогів в вигляді строки
# 1. Назва папки: ката1 ката2
# 2. Назва папки: ката1 ката2

# dirs = Dir.entries('../katas')
# dirs.each do |d|
#  p d + ":"
# end
class Tasks
  Dir.chdir('../katas')

  @@files = Dir['**/*'].map do |f|
    if File.directory? f
      puts f + ':'
    elsif File.file? f
      puts '--' + File.basename(f, '.rb')
    end
  end

  def self.run
    @@files
  end
end
