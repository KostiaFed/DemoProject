# Тут потрібно створити програму яка буде повертати результати всіх тестів
# Створіть клас Test і в ньому метод run
# return має бути результат всіх тестів в вигляді строки
Class Tests
  def run  
    tests_array =  Dir['**/*_{spec.rb}']
    tests_array.map do |file| 
      file = File.basename(file)
    end
    tests_array
  end
end