number = 7

while user_input != "n":
    user_input = input(" Would you like to play? (Y/n) ").lower()
    if user_input == "n":

    user_number = int(input("Guess our number: "))
    if user_number == number:
        print("You guessed correctly!")
    elif abs(number - user_number) == 1:
        print("You were off by one.")
    else:
        print("Sorry, it is wrong!")
