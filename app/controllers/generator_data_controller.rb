class GeneratorDataController < ApplicationController

  def index
  end

  def dados_pessoa; end

  def gerador_pessoa
    p generator_data_params
  end

  private
  def generator_data_params
    params.require(:pessoa).permit(:quantidade, :idade, :romance, :mystery, :genero, :biography)
  end

end
