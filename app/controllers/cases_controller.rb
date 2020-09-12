class CasesController < ApplicationController
  def index
    @case = Case.new
    @cases = Case.all.order("created_at DESC")
  end

  def new
    @case = Case.new
  end

  def create
    @case = Case.new(case_params)
    if @case.save
       redirect_to root_path
    else
      render :new
    end
  end

  private

  def case_params
    params.require(:case).permit(:explain, :image, :user, :problem)
  end
end
