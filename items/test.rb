# Тут потрібно створити програму яка буде повертати результати вибраного тесту
# Створіть клас Test і в ньому метод run
# В метод run буде приходити параметр з іменем тесту
# return має бути результат тесту

class Test
  @@choices = { 'hryniv' => 'AnastasiiaHryniv', 'stegnytskyi' => 'AndriiStegnytskyi', 'shevtsov' => 'DmitriyShevtsov',
                'koval' => 'IrynaKoval', 'fedorenko' => 'KostiaFedorenko', 'farat' => 'OleksiiFarat', 'siavchenko' => 'OlexiySivachenko',
                'korkonishko' => 'RomanKorkonishko', 'malko' => 'VladMalko', 'denysiuk' => 'VladyslavDenysiuk' }
  def run(test_name)
    selected_folder = ''
    user_choice = test_name.downcase.partition("_")[0]
    raise Exception, "You have entered wrong value, please try again" unless @@choices.has_key?(user_choice)
    selected_folder = @@choices.select { |key, _value| key == user_choice }
    result = "bin/rspec spec/#{selected_folder[user_choice]}/#{test_name.capitalize}.rb"
    `#{result}`
  end
end
