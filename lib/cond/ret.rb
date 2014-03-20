module Cond
  class Ret
    def self.[](truthiness, falsehood)
      new(truthiness, falsehood).evalexec
    end

    def initialize(truthiness, falsehood)
      @truthiness, @falsehood = truthiness, falsehood
    end

    def evalexec
      {
        true  => prepare { truthiness },
        false => prepare { falsehood }
      }
    end

    private

    attr_reader :truthiness, :falsehood

    def prepare
      Proc.new
    end
  end
end
