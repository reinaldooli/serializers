require "cpf_cnpj"

module Serializers
  module Activerecord
    module BR
      class CPF
        def self.dump(cpf)
          cpf = ::CPF.new(cpf)
          cpf.stripped
        end

        def self.load(cpf)
          cpf = ::CPF.new(cpf)
          cpf.formatted
        end
      end
    end
  end
end
