class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @employees = Employee.all
    respond_with(@employees)
  end

  def show
    respond_with(@employee)
  end

  def new
    @employee = Employee.new
    respond_with(@employee)
  end

  def edit
    @employee.birth_date = @employee.birth_date.strftime("%d/%m/%Y")  unless @employee.birth_date.nil?
  end

  def create
    @employee = Employee.new(employee_params)
    @employee.save
    respond_with @employee, :location => employees_path
  end

  def update
    @employee.update(employee_params)
    respond_with @employee, :location => employees_path
  end

  def destroy
    @employee.destroy
    respond_with(@employee)
  end

  private
    def set_employee
      @employee = Employee.find(params[:id])
    end

    def employee_params
      params.require(:employee).permit(:name, :cpf, :phone, :email, :birth_date, :street, :number_street, :neighborhood, :city, :state, :zip_code, :teacher)
    end
end