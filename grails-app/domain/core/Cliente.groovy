package core

class Cliente {

    String nome
    String cpf
    Date dataNascimento
    String endereco
    String telefone

    static constraints = {
        dataNascimento nullable: true
    }
}
