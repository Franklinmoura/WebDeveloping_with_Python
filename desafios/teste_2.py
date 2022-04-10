lados = [float(x) for x in input().split()]

a = lados[0];
b = lados[1];
c = lados[2];


if a + b > c and a + c > b and b + c > a:
    print(f"Perimetro = {sum(lados) :.1f}")
else:
    print(f"Area = {((a+b)*c)/2:.1f}")
    