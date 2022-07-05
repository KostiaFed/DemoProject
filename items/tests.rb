# Тут потрібно створити програму яка буде повертати результати всіх тестів
# Створіть клас Test і в ньому метод run
# return має бути результат всіх тестів в вигляді строки
class Tests
  def run
    tests_array = Dir['**/*_{spec.rb}']
    results_array = []
    tests_array.map do |file|
      file = File.basename(file)
      results_array << file
    end
    results_array
  end
end
