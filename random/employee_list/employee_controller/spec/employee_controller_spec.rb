# frozen_string_literal: true

RSpec.describe EmployeeController do
  context "a company with several layers of management" do
    def initialize_company
      zelda = Employee.new(
        'Zelda',
        [
          Employee.new('Pat')
        ]
      )
      robert = Employee.new(
        'Robert',
        [
          zelda,
          Employee.new('Anita')
        ]
      )
      todd = Employee.new(
        'Todd',
        [
          Employee.new('Randy'),
          Employee.new('Tina')
        ]
      )
      
      return Employee.new(
        'Yumiko',
        [
          Employee.new('Virginia'),
          robert,
          todd
        ]
      )
    end

    def ceo
      @ceo ||= initialize_company
    end

    it "Can list all employees" do
      all_names = ['Zelda', 'Pat', 'Robert', 'Anita', 'Todd', 'Randy', 'Tina', 'Yumiko', 'Virginia']

      expect(EmployeeController.list_reports(ceo).sort).to eq(all_names.sort)
    end
  end
end
