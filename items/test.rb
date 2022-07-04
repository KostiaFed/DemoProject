# Тут потрібно створити програму яка буде повертати результати вибраного тесту
# Створіть клас Test і в ньому метод run
# В метод run буде приходити параметр з іменем тесту
# return має бути результат тесту

class Test
  def run(test_name)
    folder_name = %w[AnastasiiaHryniv AndriiStegnytskyi DmitriyShevtsov IrynaKoval KostiaFedorenko OleksiiFarat
                     OlexiySivachenko RomanKorkonishko VladMalko VladyslavDenysiuk]
    selected_folder = ''
    user_choice = test_name.downcase.partition("_")[0]
    case user_choice
    when 'hryniv'
      selected_folder = folder_name[0]
    when 'stegnytskyi'
      selected_folder = folder_name[1]
    when 'shevtsov'
      selected_folder = folder_name[2]
    when 'koval'
      selected_folder = folder_name[3]
    when 'fedorenko'
      selected_folder = folder_name[4]
    when 'farat'
      selected_folder = folder_name[5]
    when 'siavchenko'
      selected_folder = folder_name[6]
    when 'korkonishko'
      selected_folder = folder_name[7]
    when 'malko'
      selected_folder = folder_name[8]
    when 'denysiuk'
      selected_folder = folder_name[9]
    else
      raise Exception, "You have entered wrong value, please try again"
    end
    result = "bin/rspec spec/#{selected_folder}/#{test_name.capitalize()}.rb"
    value = `#{result}`
    puts value
  end
end
test = Test.new
test.run("Fedorenko_kata2_spec")
