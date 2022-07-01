# DemoProject
## Functions
- help
- tasks
- tests
- test file_name
- show file_name
- run file_name
- specs
- ???
- ???
- ???

## Structur
- Папка "katas" в якій папки кожного учасника з його катами, має бути вигляд katas/NameSurname/Surname_kata1.rb
- Папка "specs" також з іменами і тестами в них, має бути вигляд spec/NameSurname/Surname_kata1_spec.rb (не забудьте змінити require до тестуємих кат)
- Папка "items" тут будуть всі функції програми, кожна функція окремим файлом
- main.rb Тут буде відбуватись вся робота з консоллю, та виклики всіх функцій

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