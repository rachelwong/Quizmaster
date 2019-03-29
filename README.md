# Quiz Master Application

The Quiz Master game app is an extension following from building a rudimentary banking application. I intend to clarify my understanding of object method calls, inheritance, MVC approach for structuring and resolving an application/problem. 

### How to run
```
> ruby run.rb
```

### MVP Features
* User can choose an Easy or Hard version of a quiz
* Each time a quiz is created, it is populated with questions and a correct answer
* A separate class `input_quiz.rb` will handle and sterilise user input
* `Quiz.rb` will initiate an array of question objects, in turn created in`Question.rb`
* No gems were used

#### View features
* `Screen.rb` will display various messages including welcome, exit, in/correct input, error
* `GetInput.rb` will prompt users for input

#### Model features
* `Question.rb` instantiates an object comprising of a `query` instance variable and a `correct_ans` instance variable
* `Quiz.rb` creates an array of `Question` objects. There are two inherited classes `EasyQuiz` and `HardQuiz`.

#### Controller features
* Switchboard menu for directing the program to a question loop.

Refactoring and feedback most welcome. 