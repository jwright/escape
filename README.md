escape
======

The escape room CLI

## DESCRIPTION

Escape is a command line interface for asking questions to get out of an escape room. Complete with tests.

The CLI loops through a list of questions (that you can define) and for each correct answer, you will receive a piece of the code. The
actors can use this code for a combination lock or whatever clue you want to provide them.

If the actor gets an answer wrong, the CLI will give them an answer but it is not part of the code. They can go through all of the questions and
one or more may be wrong but they will not know the wrong answer.

### Usage

You can modify the [questions.yml](escape/questions.yml) file with your own questions, answers, and the code.

To start, the actors are greated with a welcome message and they hit return to start:

```
> WELCOME TO THE ESCAPE ROOM!
>
> You were chosen to take part in this clue. Be careful, any answer will give you a part
> of the clue but if the answer is wrong, the clue is wrong. Any wrong part and you will
> have to start all over.
>
> Hit RETURN to start!
>
```

It then loops through the questions:

```
> WHAT IS THE VALUE OF PI? (Answer the question and hit RETURN)
>
```

The CLI will then provide them with an answer, right or wrong:

```
> YOUR NEXT CLUE IS: '4'
>
```

Once the CLI loops through all of the questions, you will get a message with a chance to start over:

```
> YOU HAVE COMPLETED THE CHALLENGE.
>
> Hit RETURN to restart.
```

### Installation

1. Pull down this repository

```
git clone https://github.com/jwright/escape
```

2. `cd` into this directory

```
cd escape
```

3. Configure your questions at [escape/questions.yml](escape/questions.yml)

4. Run the application at the command line

```
escape
```

## CONTRIBUTING

1. Clone the repository `git clone git@github.com:jwright/escape`
1. Create a feature branch `git checkout -b my-awesome-feature`
1. Codez!
1. Commit your changes (small commits please)
1. Push your new branch `git push origin my-awesome-feature`
1. Create a pull request `hub pull-request -b jwright:master -h jwright:my-awesome-feature`
