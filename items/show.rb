<<<<<<< Updated upstream
# Тут потрібно створити програму яка буде повертати код вибраної кати
# Створіть клас Show і в ньому метод run 
# в метод run буде приходити параметр з іменем кати
# return повертає строку з кодом кати (ця строка буде виведена в консоль)
=======
class Shows
  def name(argument)
    @name = argument.split('_')[0]
  end

  def name_kata(argument)
    @name_kata = argument.gsub(/[^0-9]/, '')
  end

  def get_path_content(dir)
    queue = Queue.new
    result = []
    queue << dir
    until queue.empty?
      current = queue.pop
      Dir.entries(current).each do |file|
        full_name = File.join(current, file)
        if !(File.directory? full_name)
          result << full_name
        elsif (file != '.') && (file != '..')
          queue << full_name
        end
      end
    end
    result
  end

  def pattern_name(name, name_kata, path)
    @path = path
    @name = name
    @name_kata = name_kata
    start_pattern = @path.grep(/#{@name}/i)
    finish_pattern = start_pattern.grep(/#{@name_kata}/i)
  end

  def open_files(a)
    @path_to = a
    f = File.new(@path_to, 'r:UTF-8')
    content = f.read.gsub(/#.*$/, '')
    return content
  end
end

class Show
  def run(argument)
    start = Shows.new
    name = start.name(argument)
    name_kata = start.name_kata(argument)
    path_to_file = start.get_path_content('katas')
    start.pattern_name(name, name_kata, path_to_file)
    pattern_name = start.pattern_name(name, name_kata, path_to_file)
    pattern_name_tos = pattern_name[0].to_s
    start.open_files(pattern_name_tos)
  end
end
>>>>>>> Stashed changes
