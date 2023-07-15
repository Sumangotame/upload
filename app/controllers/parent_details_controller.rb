class ParentDetailsController < ApplicationController
  before_action :set_parent_detail, only: %i[ show edit update destroy ]
  def import
    return redirect_to request.referer, notice: 'No file added' if params[:file].nil?
    return redirect_to request.referer, notice: 'Only CSV files allowed' unless params[:file].content_type == 'text/csv'

    CsvImportService.new.call(params[:file])

    redirect_to parent_details_path, notice: 'imported successfully'
  end

  # GET /parent_details or /parent_details.json
  def index
    @parent_details = ParentDetail.all
  end

  # GET /parent_details/1 or /parent_details/1.json
  def show
  end

  # GET /parent_details/new
  def new
    @parent_detail = ParentDetail.new
  end

  # GET /parent_details/1/edit
  def edit
  end

  # POST /parent_details or /parent_details.json
  def create
    @parent_detail = ParentDetail.new(parent_detail_params)

    respond_to do |format|
      if @parent_detail.save
        format.html { redirect_to parent_detail_url(@parent_detail), notice: "Parent detail was successfully created." }
        format.json { render :show, status: :created, location: @parent_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @parent_detail.errors, status: :unprocessable_entity }
      end
    end
  end



  # PATCH/PUT /parent_details/1 or /parent_details/1.json
  def update
    respond_to do |format|
      if @parent_detail.update(parent_detail_params)
        format.html { redirect_to parent_detail_url(@parent_detail), notice: "Parent detail was successfully updated." }
        format.json { render :show, status: :ok, location: @parent_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @parent_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parent_details/1 or /parent_details/1.json
  def destroy
    @parent_detail.destroy

    respond_to do |format|
      format.html { redirect_to parent_details_url, notice: "Parent detail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parent_detail
      @parent_detail = ParentDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def parent_detail_params
      params.require(:parent_detail).permit(:first_name, :last_name, :Address, :phone_number, :email)
    end


  end