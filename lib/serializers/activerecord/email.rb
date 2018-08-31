module Serializers
  module Activerecord
    class Email
      def self.dump(email)
        email.downcase
      end

      def self.load(email)
        email
      end
    end
  end
end
