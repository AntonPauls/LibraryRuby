module ErrorsCatcher
    class InstanceClassError < StandardError
      def initialize
        super('Wrong instance of class!!!')
      end
    end
end