class DepartmentsController < ApplicationController
  before_action :set_department, only: [:update, :destroy]

  def index
    departments = Department.all
    render json: departments.to_json
  end

  def create
    department = Department.new(department_params)
    if department.save
      render json: department.to_json
    end
  end

  def update
    if @department.update(department_params)
      render json: @department.to_json
    end
  end

  def destroy
    if @department.destroy
      render json: @department.to_json
    end
  end

  private

    def set_department
      @department = Department.find(params[:id])
    end

    def department_params
      params.permit(:name)
    end
end
