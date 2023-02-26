class CharSheetsController < ApplicationController
  before_action :set_char_sheet, only: %i[ show edit update destroy ]

  # GET /char_sheets or /char_sheets.json
  def index
    @char_sheets = CharSheet.all
  end

  # GET /char_sheets/1 or /char_sheets/1.json
  def show
  end

  # GET /char_sheets/new
  def new
    @char_sheet = CharSheet.new
  end

  # GET /char_sheets/1/edit
  def edit
  end

  # POST /char_sheets or /char_sheets.json
  def create
    @char_sheet = CharSheet.new(char_sheet_params)

    respond_to do |format|
      if @char_sheet.save
        format.html { redirect_to edit_char_sheet_path(@char_sheet), notice: "Char sheet was successfully created." }
        format.json { render :show, status: :created, location: @char_sheet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @char_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /char_sheets/1 or /char_sheets/1.json
  def update
    respond_to do |format|
      if @char_sheet.update(char_sheet_params)
        format.html { redirect_to edit_char_sheet_path(@char_sheet), notice: "Char sheet was successfully updated." }
        format.json { render :show, status: :ok, location: @char_sheet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @char_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /char_sheets/1 or /char_sheets/1.json
  def destroy
    @char_sheet.destroy

    respond_to do |format|
      format.html { redirect_to char_sheets_url, notice: "Char sheet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_char_sheet
      @char_sheet = CharSheet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def char_sheet_params
      params.require(:char_sheet).permit(:meta_info => {}, :ability_scores => {}, :combat => {}, :equipment => {}, :features => {}, :backstory => {})
    end
end
