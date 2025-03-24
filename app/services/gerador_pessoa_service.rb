require 'faker'

class GeradorPessoaService

  def initialize(quantidade_pessoa = [*1..30].sample, idade = nil, genero = 'aleatorio')
    @quantidade_pessoa = quantidade_pessoa
    @idade = idade
    @genero = genero.to_sym
    @json = nil
  end

  def call
    generate_json
  end

  private

  def generate_json
    Faker::Config.locale = 'pt-BR'

    lista_de_dados = []
    @quantidade_pessoa.times do
      lista_de_dados << { nome: Faker::Name.name, email: Faker::Internet.email,
                          telefone: Faker::PhoneNumber.phone_number_with_country_code,
                          data_nascimento: Faker::Date.between(from: '2014-09-23', to: '2024-09-25'),
                          endereco: Faker::Address.full_address, cidade: Faker::Address.city,
                          bairro: Faker::Address.community }
    end
    lista_de_dados
  end
end
