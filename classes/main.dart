import 'dart:math';

/*Principais conceitos:
    - Classe
    - Objeto
    - Atributos
    - Métodos 
*/

/* Abstração 
Usada para criar modelos genéricos (generalizações) que outras classes concretizam
focamos no que um objeto faz e não em como ele faz*/

abstract class Forma2D {
    double calculaArea();
    double calculaPerimetro();
}

class Retangulo extends Forma2D{
    // Atributos 
    double largura;
    double altura;

    // Construtor
    Retangulo(this.largura, this.altura);

    // Métodos
    double calculaArea(){
        return largura*altura;
    }

    double calculaPerimetro(){
        return 2 * (largura+altura);
    }
}

class Quadrado extends Forma2D{
    // Atributos 
    double lado;

    // Construtor
    Quadrado(this.lado);

    // Métodos
    double calculaArea(){
        return lado * lado;
    }

    double calculaPerimetro(){
        return lado * 4;
    }
} 

//ou

class Quadrado extends Retangulo{
    Quadrado(double lado) : super(lado,lado);
}

// class Circulo extends Forma2D{

// }

// class Triangulo extends Forma2D{

// }

void main(){
    //Retangulo ret = Retangulo(2, 3);
    Quadrado quad = Quadrado(2);

   print(quad.calculaArea());
   print(quad.calculaPerimetro());
}