# Тут потрібно створити програму яка буде повертати результати вибраного тесту
# Створіть клас Test і в ньому метод run
# В метод run буде приходити параметр з іменем тесту
# return має бути результат тесту
CHOICES = { 'hryniv' => 'AnastasiiaHryniv',
            'stegnytskyi' => 'AndriiStegnytskyi',
            'shevtsov' => 'DmitriyShevtsov',
            'koval' => 'IrynaKoval',
            'fedorenko' => 'KostiaFedorenko',
            'farat' => 'OleksiiFarat',
            'siavchenko' => 'OlexiySivachenko',
            'korkonishko' => 'RomanKorkonishko',
            'malko' => 'VladMalko',
            'denysiuk' => 'VladyslavDenysiuk' }
class TestService
  def receive_part_before_underscore(input)
    input.downcase.partition("_")[0]
  end

  def receive_value(input_string)
    raise ArgumentError, "You have entered wrong value, please try again" unless CHOICES.has_key?(input_string)

    CHOICES[input_string]
  end

  def get_result_string(user_input)
    user_choice = receive_part_before_underscore(user_input)
    "bin/rspec spec/#{receive_value(user_choice)}/#{user_input.capitalize}.rb"
  end
end

class Test
  def run(test_name)
    `#{TestService.new.get_result_string(test_name)}`
  end
end
