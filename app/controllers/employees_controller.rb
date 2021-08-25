class EmployeesController < ApplicationController
  before_action :set_employee, only: [:update, :destroy]

  def index
    employees = Employee.all
    render json: employees.to_json
  end

  def create
    employee = Employee.new(employee_params)
    if employee.save
      render json: employee.to_json
    end
  end

  def update
    if @employee.update(employee_params)
      render json: @employee.to_json
    end
  end

  def destroy
    if @employee.destroy
      render json: @employee.to_json
    end
  end

  private

    def set_employee
      @employee = Employee.find(params[:id])
    end

    def employee_params
      params.permit(:name, :department, :date_of_joining, :photo_file_name)
    end
end
