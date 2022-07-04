# DemoProject
## Functions
- help
- tasks
- tests
- test file_name
- show file_name
- run file_name
- specs
- author file_name
- ???
- ???

## Structure
- Папка "katas" в якій папки кожного учасника з його катами, має бути вигляд katas/NameSurname/Surname_kata1.rb
- Папка "specs" також з іменами і тестами в них, має бути вигляд spec/NameSurname/Surname_kata1_spec.rb (не забудьте змінити require до тестуємих кат)
- Папка "items" тут будуть всі функції програми, кожна функція окремим файлом
- main.rb Тут буде відбуватись вся робота з консоллю, та виклики всіх функцій

Маю ще дещо пояснити за назви кат і тестів, бажано щоб ви закидували свої кати і тести на свої кати, і все це називали вашим NameSurname наприклад:
ката Serhiy_kata1.rb
тест на цю кату Serhiy_kata1_spec.rb

Або щоб ви закидували свої тести на чужі кати і разом з тим чужі кати, в такому випадку ви називаєте їх NameSurname того кому ви робили тести

Також в файлах тестів ми маємо require до кат, не забудьте поміняти дорогу до кат
'./katas/SerhiyAntonenko/Antonenko_kata1.rb'

## How it works?
І так, в папці items кожна функція має окремий файл, в кожному файлі є клас з методом run в який передаються параметри і який повертає данні у вигляді строки(ця строка буде виведена в консоль).
В такому випадку, для роботи достатньо require всі файли в main.rb, та запускати всі функції з нього.

## How to work with Git?
Коротко, створюєте свою гілку з назвою SurnameBranch, та при потребі відправляєте пулреквест.

Впринципі можна відправляти зміни напряму в головну гілку, але це небезпечно і може зашкодити роботі.

## Ideas
- Comands yellow collor
- Command 'run window file_name' - runs program in seperate console
- Command 'author file_name' - describes who is autor of that file or who created that test
- Сommand 'katas' - shows all the katas
- Command 'specs' - shows all the tests
- Function that parse command line
