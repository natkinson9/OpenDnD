class SheetController < ApplicationController
  before_action :set_sheet, only: [:show, :edit, :update, :destroy]

  def index
    @sheet = Sheet.all
  end

  def show
  end

  def new
    @sheet = Sheet.new
  end

  def create
    @sheet = Sheet.new(sheet_params)

    if @sheet.save
      redirect_to sheet_path, notice: "Sheet was successfully created."
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @sheet.update(sheet_params)
      redirect_to sheet_path, notice: "Sheet was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @sheet.destroy
    redirect_to sheet_path, notice: "Sheet was successfully destroyed."
  end

  private

  def set_sheet
    @sheet = Sheet.find(params[:id])
  end

  def sheet_params
    params.require(:sheet).permit(:name)
  end

end
