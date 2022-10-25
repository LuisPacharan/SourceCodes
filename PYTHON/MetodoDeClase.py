
#Existen metodos de instancia y métodos de clases
#Para ésto se utilizan decoradores

class Circulo:
    
    pi = 3.141592

    @classmethod
    def area(cls, radio):
        return cls.pi * (radio ** 2)

resultado = Circulo.area(14)
print(resultado)