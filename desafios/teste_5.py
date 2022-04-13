
x, y = map(int, input("digite os dois valores de x e y: ").split())
while(x!=y):
    floor = min(x, y)
    top = max(x, y)
    if (floor > top):
        print("Crescente")
    elif(top < floor):
        print("Decrescente")
    x, y = map(int, input("Digite os dois valores de x e y: ").split())