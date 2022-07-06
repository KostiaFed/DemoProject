# Тут потрібно створити програму яка буде повертати всі доступні кати в каталозі katas
# Створіть клас Tasks і в ньому метод run
# return має бути строка з назвами всіх каталогів в вигляді строки
# 1. Назва папки: ката1 ката2
# 2. Назва папки: ката1 ката2

#dirs = Dir.entries('../katas')
#dirs.each do |d|
#  p d + ":"
#end
class Tasks
  def run
    str = ""
    @@files = Dir['./katas/**/*'].map do |f|
      if File.directory? f
        str += File.basename(f) + ':' + "\n"
      elsif File.file? f
        str += '  -' + File.basename(f, '.rb') + "\n"
      end
    end
    str
  end
end