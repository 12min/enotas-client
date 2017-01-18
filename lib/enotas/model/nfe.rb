module Enotas
  module Model
    class Nfe

      include Virtus.model

      attribute :id, String
      attribute :enviarPorEmail, String
      attribute :ambienteEmissao, String
      attribute :tipo, String
      attribute :idExterno, String
      attribute :consumidorFinal, String
      attribute :indicadorPresencaConsumidor, String
      attribute :valorTotal, String
      attribute :idExternoSubstituir, Float
      attribute :nfeIdSubstitituir, Float

      attribute :servico, Servico
      attribute :endereco, Endereco
      attribute :cliente, Cliente

    end
  end
end
