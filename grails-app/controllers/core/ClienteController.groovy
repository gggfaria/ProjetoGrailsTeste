package core

import grails.converters.JSON

class ClienteController {

    def index() {}

    def listar() {
        def clientes = Cliente.list()
        render clientes as JSON
    }

    def salvar() {
        Cliente cliente = new Cliente()

        cliente.nome = params.nome
        cliente.cpf = params.cpf
        cliente.dataNascimento = Date.parse("dd/MM/yyyy", params.dataNascimento)
        cliente.endereco = params.endereco
        cliente.telefone = params.telefone
        println(params)
        println(cliente)
        if (cliente.hasErrors()) {
            def mensagem = [erro: cliente.errors.allErrors]

            render mensagem as JSON
        } else {
            cliente = cliente.save(flush: true)
            render cliente as JSON
        }
    }
}