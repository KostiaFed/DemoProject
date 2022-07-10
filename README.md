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
- sort folder_name
- ???

## Structure
- The "katas" folder, in which each participant's folder with his katas, should look like katas/NameSurname/Surname_kata1.rb
- The "specs" folder, also with names and tests in them, should look like spec/NameSurname/Surname_kata1_spec.rb (don't forget to change require to the tested katas)
- The "items" folder will contain all the functions of the program, each function is a separate file
- main.rb All work with the console and calls of all functions will take place here

I have to explain a little more about the names of kats and tests, it is desirable that you cast your kats and tests on your kats, and call it all your NameSurname, for example:
kata Serhiy_kata1.rb
test for this kata Serhiy_kata1_spec.rb

Or that you throw your tests at other people's killers and at the same time other people's killers, in this case you call them the NameSurname of the person to whom you did the tests

Also, in the test files, we have a require to the cat, do not forget to change the path to the cat
'./katas/SerhiyAntonenko/Antonenko_kata1.rb'

## How it works?
And so, in the items folder, each function has a separate file, in each file there is a class with the run method to which parameters are passed and which returns data in the form of a string (this string will be output to the console).
In this case, it is enough to require all files in main.rb and run all functions from it.

## How to work with Git?
In short, you create your branch with the name SurnameBranch, and if necessary, send a pull request.

In principle, you can send changes directly to the master branch, but this is dangerous and can harm work.

## Ideas
- Comands yellow color
- Command 'run window file_name' - runs program in seperate console
- Command 'author file_name' - describes who is author of that file or who created that test
- Сommand 'katas' - shows all the katas
- Command 'specs' - shows all the tests
- Function that parse command line
- help with modificators -s (short/default) -d (description) -a (additional) -f (full)
info for additional: count of authors, count of katas, count of functions, project created date
