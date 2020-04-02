require 'pry'

class Company
    attr_accessor :name, :size

    def initialize(name, size)
        @name = name
        @size = size
    end
end

companies = [
    Company.new('Alpha', 30),
    Company.new('Beta', 300),
    Company.new('Delta', 3000)
]

### Your code below this
list_of_companies_with_size=[]

companies.each do|company|
    list_of_companies_with_size << "#{company.name}-#{company.size}"
end

p list_of_companies_with_size

company_sum=companies.reduce(0) do|acc,company|
    acc+company.size
end

p company_sum

companies_over_100 = companies.select do|company|
    company.size > 100
end

p companies_over_100

beta_company = companies.find do|company|
    company.name == "Beta"
end

p beta_company

largest_company = companies.max_by do|company|
    company.size
end

p largest_company

companies_largest_to_smallest = companies.sort do|company|
    company.size
end

p companies_largest_to_smallest
