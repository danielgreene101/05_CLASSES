class Company
    attr_accessor :job
    attr_accessor :name
    attr_accessor :start

    def initialize(j, n, s)
        @job = j
        @name = n
        @start = s
    end
end


class Tech_bros
    attr_accessor :name
    attr_accessor :job
    attr_accessor :start
    attr_accessor :employees

    def initialize
        @name = ""
        @job = ""
        @start = ""

        @employees = Array.new
    end
end

# Create the bank
NewPeople = Tech_bros.new


steve = Company.new("Steve", "CEO", "11/11/1111")
ryan = Company.new("Ryan", "CTO", "22/22/2222")
charisse = Company.new("Charisse", "CFO", "33/33/3333")

# Add the customers into the aggregate instance variable of the bank
NewPeople.employees.push(steve)
NewPeople.employees.push(ryan)
NewPeople.employees.push(charisse)

puts Tech_bros.name

NewPeople.employees.each do |x|
   puts x.name
   puts x.job
   puts x.start
end



