RSpec.describe Employee do
  def employee
    @employee ||= Employee.new("Tad Manley")
  end

  context 'employee has is instantiated without reports' do
    it 'has a name' do
      expect(employee.name).to eq("Tad Manley")
    end

    it 'has no reports' do
      expect(employee.direct_reports).to be_nil 
    end
  end

  context 'employee is instantiated with direct reports' do
    def manager
      @manager ||= Employee.new("Rich Lather", [employee])
    end

    it 'has a list of direct reports' do
      expect(manager.direct_reports).to be_an Array
    end

    it 'Tad reports to Rich' do
      expect(manager.direct_reports.first).to eq(employee)
    end
  end
end
