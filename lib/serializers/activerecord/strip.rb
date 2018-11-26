module Serializers
  module Activerecord
    class Strip
      def self.dump(string)
        string.strip
      end

      def self.load(string)
        string
      end
    end
  end
end
