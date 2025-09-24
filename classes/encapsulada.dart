/*Encapsulamento 
Esconder detalhes internos de uma classe e expor apenas o necessário a fim de 
proteger os dados e controlar como são acessados ou modificados */
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

void main(){
    Pessoa pessoa = Pessoa('Luiz Otávio',25);

    print(pessoa.getIdade());
    print(pessoa.getNome());

    pessoa.exibir();
}