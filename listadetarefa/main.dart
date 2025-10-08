class Tarefa {
  String descricao;
  int prioridade; //1 - Alta, 2 - Média, 3 - Baixa
  bool concluida = false;

  Tarefa(this.descricao,this.prioridade);

  @override
  String toString() {
    String status = concluida? 'Concluido' : 'Pendente';
    String prior = prioridade == 1? 'Alta' : prioridade == 2? 'Media' : 'Baixa';
    return '$descricao ----- $prior ----- $status';
  }
}

class GerenciadorTarefa{
  List _tarefas = [];
  void adicionar(Tarefa t){
      _tarefas.add(t);
  }

  void remover(int id){
    _tarefas.removeAt(id);
  }

  void listar(){
    print('     Descrição       Prioridade       Status');
    for(int i = 0; i< _tarefas.length; i++){
      print('$i).' + _tarefas[i].toString());
    }
  }

}



void main(){

  GerenciadorTarefa listaDeTarefas = GerenciadorTarefa();

  Tarefa t1 = Tarefa('Ir para academia', 3 );
  Tarefa t2 = Tarefa('Fazer compras no mercado', 1 );

  listaDeTarefas.adicionar(t1);
  listaDeTarefas.adicionar(t2);

  listaDeTarefas.listar();
}