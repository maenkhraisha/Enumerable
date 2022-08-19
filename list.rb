require_relative 'Enumerable.rb'
include ListEnum

class MyList
    @list = Array[]

    def initialize(*numbers)
        @list = numbers;
    end

    def all?
        ListEnum.all(@list)
    end

    def fun1(n)
        yield n
        yield
        fun2
    end
    def fun2
        puts "from function 2"
    end
end

list = MyList.new(1,2,3,4)

# puts list.all? { |word| word > 5 }

list.fun1(2) {|x| puts "hello #{x}"}