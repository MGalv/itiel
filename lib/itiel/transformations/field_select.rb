module Itiel
  module Transformations
    class FieldSelect
      include InputOutputBehavior

			attr_accessor :mappings

      def initialize(*args)
        self.mappings = args
      end

      def transform!(input_stream)
        selected_output = []
        input.each do |object|
          selected_output << object.select {|key, value| self.mappings.include? key }
        end

        selected_output
      end
    end
  end
end
