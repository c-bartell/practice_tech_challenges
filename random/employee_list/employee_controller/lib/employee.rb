class Employee
  attr_reader :name, :direct_reports

  def initialize(name, direct_reports = nil)
    @name = name
    @direct_reports = direct_reports
  end
end
