require "cpf_cnpj"

module Serializers
  module Activerecord
    module BR
      class CNPJ
        def self.dump(cnpj)
          cnpj = ::CNPJ.new(cnpj)
          cnpj.stripped
        end

        def self.load(cnpj)
          cnpj = ::CNPJ.new(cnpj)
          cnpj.formatted
        end
      end
    end
  end
end
