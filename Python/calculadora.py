def suma(num1, num2):
    return num1 + num2

def resta(num1, num2):
    return num1 - num2

def multiplicacion(num1, num2):
    return num1*num2

def division(num1, num2):
    return num1/num2

print "Bienvenido a la calcuradora"
print "Seleccione la operacion que desea realizar:"
print "1. Suma"
print "2. Resta"
print "3. Multiplicacion"
print "4. Division"
operacion = input()

print "Ha seleccionado: ", operacion

num1 = input("Introduzca el primer numero")
num2 = input("Introduzca el segundo numero")

print "resultado: "

if operacion == 1:
    print suma(num1, num2)

if operacion == 2:
    print resta(num1, num2)

if operacion == 3:
    print multiplicacion(num1, num2)

if operacion == 4:
    print division(num1, num2)
