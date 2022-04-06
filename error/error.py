def divide(dividend, divisor):
    if divisor == 0:
        raise ZeroDivisionError("Divisor cannot be 0.")
    return dividend / divisor




grades = []

students = [
    
    {"name": "Frank", "grades": [90, 89, 100, 97]},
    {"name": "Gustavo", "grades": [99, 79, 90, 87]},
    {"name": "Lucia", "grades": [96, 88, 99, 67]},
    {"name": "Lucas", "grades": [93, 81, 91, 92]},
    {"name": "Francisca", "grades": [90, 89, 90, 77]},
    {"name": "Flavia", "grades": [99, 100, 95, 97]},
    {"name": "Polaca", "grades": [93, 59, 91, 94]},
    {"name": "Adriana", "grades": [100, 100, 100, 57]},
    {"name": "Francisco", "grades": [95, 89, 100, 99]},
    {"name": "Joao", "grades": [100, 100, 100, 100]},
    {"name": "Jose", "grades": [92, 81, 100, 92]},
    
    
    
]


print("welcome to the average grade program.")


try:
    average = divide(sum(grades), len(grades))
except ZeroDivisionError as e:
    print("there are no grades yet in your list")
else:
    print("The average grade is {average}.")
finally:
    print("Thank you!")
