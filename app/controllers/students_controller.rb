class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @students = Student.all
    respond_with(@students)
  end

  def show
    respond_with(@student)
  end

  def new
    @student = Student.new
    respond_with(@student)
  end

  def edit
    @student.birth_date = @student.birth_date.strftime("%d/%m/%Y")  unless @student.birth_date.nil?
  end

  def create
    @student = Student.new(student_params)
    @student.save
    respond_with @student, :location => students_path
  end

  def update
    @student.update(student_params)
    respond_with @student, :location => students_path
  end

  def destroy
    @student.destroy
    respond_with(@student)
  end

  private
    def set_student
      @student = Student.find(params[:id])
    end

    def student_params
      params.require(:student).permit(:name, :birth_date, :cpf, :gender, :profession, :phone, :cel_phone, :father, :mother, :responsible, :cpf_responsible, :street, :number_street, :zip_code, :neighborhood, :city, :state, :rg)
    end
end
