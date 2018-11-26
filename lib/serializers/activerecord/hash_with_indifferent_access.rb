module Serializers
  module Activerecord
    class HashWithIndifferentAccess
      def self.dump(hash)
        hash
      end

      def self.load(hash)
        (hash ? hash : {}).with_indifferent_access
      end
    end
  end
end
