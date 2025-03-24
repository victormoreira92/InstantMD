class GeneratorDataController < ApplicationController

  def index
  end

  def dados_pessoa; end

  def gerador_pessoa
    
  end

  private
  def generator_data_params
    params.require(:pessoa).permit(:quantidade_pessoas, :idade, :romance, :mystery, :genero, :biography)
  end

end
