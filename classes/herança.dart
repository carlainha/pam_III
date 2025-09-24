/*Herança
Permite que uma classe herde atributos e métodos de outra.
Classe pai (superclasse) e classe filha (subclasse)*/

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
    void exibirCurso(){
        print('Curso: $_curso');
    }
}

void main(){
    Aluno aluno = Aluno('Clara',17,"Desing");

    print(aluno.getCurso());
    print(aluno.getNome());

    aluno.exibirCurso();
}