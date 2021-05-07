class EmployeeController
  class << self
    def list_reports(employee)
      names = []
      stack = [employee]

      until stack.empty?
        person = stack.pop
        names << person.name
        stack += person.direct_reports if person.direct_reports 
      end

      return names
    end
  end
end
