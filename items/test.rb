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

  def receive_key_value_pair_from_hash(input_string, input_hash)
    raise ArgumentError, "You have entered wrong value, please try again" unless input_hash.has_key?(input_string)

    input_hash.select { |key, _value| key == input_string }
  end

  def get_result_string(user_input)
    user_choice = receive_part_before_underscore(user_input)
    "bin/rspec spec/#{receive_key_value_pair_from_hash(user_choice, CHOICES)[user_choice]}/#{input.capitalize}.rb"
  end
end

class Test
  def run(test_name)
    `#{TestService.new.get_result_string(test_name)}`
  end
end
