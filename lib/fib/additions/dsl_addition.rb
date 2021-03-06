module Fib
  module Additions
    module ControllerDslAddition
      extend ActiveSupport::Concern
      class_methods do
        def fib_controller! key
          include Fib::Additions::RailsControllerAddition
          self.fib_container = key
        end
      end
    end

    module TargeterDslAddition
      extend ActiveSupport::Concern
      class_methods do
        def fib_targeter! key, options={}
          include Fib::Additions::TargeterAddition
          self.fib_container = key
          self.__fib_inherit = options[:inherit] if options[:inherit]
        end
      end
    end
  end
end
