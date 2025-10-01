abstract class Pessoa{
    String nome;
    int idade;

    Pessoa(this.nome, this.idade);

    void apresentar();
}

class Aluno extends Pessoa{
    String matricula;

    Aluno(String nome, int idade, this.matricula) : super(nome, idade);

    @override
    void apresentar(){
      print("Sou o aluno $nome, tenho $idade anos e o numero da minha matricula é $matricula");
    }
}

class Professor extends Pessoa{
    String especialidade;

    Professor(String nome, int idade, this.especialidade) : super(nome, idade);

    @override
    void apresentar(){
      print("Sou o professor $nome, tenho $idade anos e a minha especialidade é $especialidade");
    }
}

class Disciplina{
    String nome;
    int cargaHoraria;

    Disciplina(this.nome,this.cargaHoraria);
}

class Turma{
    String nome;
    String professor;
    List<Aluno> alunos = [];
    List<Disciplina> disciplinas = [];

    Turma(this.nome, this.professor);

    void adicionarAluno(Aluno aluno){
      alunos.add(aluno);
    }

    void adicionarDisciplina(Disciplina disciplina){
      disciplinas.add(disciplina);
    }

    void listarAlunos() {
      print("Alunos da turma $nome:");
      for (var a in alunos) {
        print("- ${a.nome}");
      }
    }

  void listarDisciplinas() {
    print("Disciplinas da turma $nome:");
    for (var d in disciplinas) {
      print("- ${d.nome} (${d.cargaHoraria}h)");
    }
  }
}

class Escola{
    String nome;
    List<Turma> turmas = [];
    List<Professor> professores = [];
    List<Aluno> alunos = [];

    Escola(this.nome);

    void adicionarTurma(Turma turma){
      turmas.add(turma);
    }

    void adicionarProfessor(Professor professor){
      professores.add(professor);
    }

    void adicionarAluno(Aluno aluno){
      alunos.add(aluno);
    }

    void listarTurmas(){
      print("Turmas da escola $nome:");
      for (var a in turmas) {
        print("- ${a.nome}");
      }
    }

    void listarProfessores() {
      print("Professores da escola $nome:");
      for (var d in professores) {
        print("- ${d.nome}, especialidade (${d.especialidade})");
      }
    }
}

void main() {
  // Criando professores
  var prof1 = Professor("Carlos", 40, "Matemática");
  var prof2 = Professor("Ana", 35, "História");

  // Criando alunos
  var aluno1 = Aluno("João", 16, "2023001");
  var aluno2 = Aluno("Maria", 17, "2023002");

  // Criando disciplinas
  var mat = Disciplina("Matemática", 80);
  var his = Disciplina("História", 60);

  // Testando
  aluno1.apresentar();
  prof1.apresentar();
}