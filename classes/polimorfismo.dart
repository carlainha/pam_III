/*Polimorfismo
Capacidade de um objeto assumir múltiplas formas.
O mesmo método pode ter diferentes implementações em subclasses*/

class Pessoa {

    // Atributos
    String _nome;
    int _idade;

    // Construtor
    Pessoa(this._nome,this._idade);

    String getNome(){
        return _nome;
    }

    void setNome(String nome){
        _nome = nome;
    }

    int getIdade(){
        return _idade;
    }

    void setIdade(int idade){
        _idade = idade;
    }

    // Métodos
    void exibir(){
        print('Nome: $_nome, Idade: $_idade');
    }
}

class Aluno extends Pessoa{
    // Atributos 
    String _curso;

    // Construtor
    Aluno(String nome, int idade, this._curso) : super(nome, idade);

    //Métodos

    String getCurso(){
        return _curso;
    }

    void setCurso(curso){
        _curso=curso;
    }

    @override
    void exibir(){
        print('Nome do aluno: $_nome,Idade: $_idade, Curso: $_curso');
    }
}

void main(){
    Aluno aluno = Aluno('Clara',17,"Desing")
    aluno.exibir();
}