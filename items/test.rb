# Тут потрібно створити програму яка буде повертати результати вибраного тесту
# Створіть клас Test і в ньому метод run
# В метод run буде приходити параметр з іменем тесту
# return має бути результат тесту

class Test
def run (test_name)
  result = "bin/rspec spec/#{test_name}"
  puts result
end

end
test = Test.new
test.run("KostiaFedorenko/Fedorenko_kata1_spec.rb")
