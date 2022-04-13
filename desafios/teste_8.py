X, Y = map(int, input("digite os valores de X e Y: ").split())
while(X!=Y):
    floor = min(X, Y)
    top = max(X, Y)
    if (X < Y and top > floor):
        print("Crescente")
    elif(X > Y and top > floor): 
        print("Decrescente")
    X, Y = map(int, input("Digite os valores de X e Y: ").split())
    