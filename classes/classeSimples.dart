/*Classe Simples*/
class Pessoa {

    // Atributos
    String/*?*/ nome;
    int/*?*/ idade;

    // Construtor
    /*Pessoa(String novoNome, int novaIdade){
        nome = novoNome;
        idade = novaIdade;
    }*/

    //ou(se fizer dessa forma não precisa setar que as variáveis são nulos com ?)

    Pessoa(this.nome,this.idade);

    // Métodos
    void exibir(){
        print('Nome: $nome, Idade: $idade');
    }
}

void main(){
    Pessoa pessoa = Pessoa('Luiz Otávio',25);

    print(pessoa.idade);
    print(pessoa.nome);

    pessoa.exibir();
}