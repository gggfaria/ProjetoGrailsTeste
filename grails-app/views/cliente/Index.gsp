<!DOCTYPE html>
<html>
<head>
    <title>Cadastro de Clientes</title>
    <meta name="layout" content="main">
    <script type="text/javascript" src="/Tarefa/js/jquery-3.1.1.min.js"></script>
    <script type="text/javascript">
        function exibirMensagem(data) {
            if(data.erro)
            {
                alert("Deu ruim")
            }else
            {
                alert("Deu bom")
            }
        }
    </script>
</head>

<body>

<g:formRemote name="formcliente" url="[controller: 'Cliente', action: 'salvar']" onSuccess="exibirMensagem(data)">
    Nome <input type="text" name="nome"/><br/>
    CPF <input type="number" name="cpf"/><br/>
    Data Nascimento <input type="text" name="dataNascimento"/><br/>
    Enedereco <input type="text" name="endereco"/><br/>
    Telefone <input type="text" name="telefone"/><br/>
    <input type="submit" name="enviar" value="Salvar"/><br/>

</g:formRemote>

</body>
</html>
