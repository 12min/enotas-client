# Enotas

Wrapper ruby da api do e-notas. A documentação completa dos endpoints pode ser encontrada aqui: [API E-notas](http://app.enotasgw.com.br).

## Instalação

Adicione o código abaixo ao Gemfile da sua aplicação:

```ruby
gem 'enotas'
```

E execute:

    $ bundle

Ou instale manualmente:

    $ gem install enotas

## Uso básico

* Instancie o cliente passando sua API key:

```ruby
client = Enotas::Client.new('sua-api-key-do-e-notas')
```

Agora já podemos emitir uma nota!

* Emitindo uma nova nota:

```ruby
nfe = Enotas::Model::Nfe.new
nfe.tipo = 'NFS-e'
nfe.idExterno = '42'
nfe.cliente = {
  name: 'Nome Cliente',
  email: 'cliente@email.com',
  cpfCnpj: '23857396237'
}
nfe.endereco = {
  uf: 'MG',
  cidade: 'Belo Horizonte',
  logradouro: 'Rua 01',
  numero: '112',
  bairro: 'Savassi',
  cep: '32323111'
}

nfe.nfe_create('id-da-empresa-no-enotas', nfe)
```

## Contribuindo

Para contruibuir de uma forma adequada, siga os passos abaixo:

* Faça um fork do projeto;
* Após clonar seu fork, crie um novo branch com a feature que deseja implementar;
* Envie seu branch para seu repositório remoto;
* Solicite um PR a partir desse novo branch enviado.

Issues e comentários são sempre bem-vindos no repoistório oficial: https://github.com/enotas/enotas-ruby.

## ROADMAP

Quer contribuir e não sabe por onde começar? Veja nosso ROADMAP:

* Escrever testes;
* Normalizar campos dos models para o padrão ruby;
* Cobrir os endpoints referentes ao resource "empresa".

## License

Esta gem está disponível através da [licença MIT](http://opensource.org/licenses/MIT).
