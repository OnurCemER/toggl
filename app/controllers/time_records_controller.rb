class TimeRecordsController < ApplicationController
  before_action :set_time_record, only: %i[ show edit update destroy ]

  # GET /time_records or /time_records.json
  def index
    @time_records = TimeRecord.all
  end

  # GET /time_records/1 or /time_records/1.json
  def show
  end

  # GET /time_records/new
  def new
    @time_record = TimeRecord.new
  end

  # GET /time_records/1/edit
  def edit
  end

  # POST /time_records or /time_records.json
  def create
    @time_record = TimeRecord.new(time_record_params)

    respond_to do |format|
      if @time_record.save
        format.html { redirect_to @time_record, notice: "Time record was successfully created." }
        format.json { render :show, status: :created, location: @time_record }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @time_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /time_records/1 or /time_records/1.json
  def update
    respond_to do |format|
      if @time_record.update(time_record_params)
        format.html { redirect_to @time_record, notice: "Time record was successfully updated." }
        format.json { render :show, status: :ok, location: @time_record }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @time_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /time_records/1 or /time_records/1.json
  def destroy
    @time_record.destroy
    respond_to do |format|
      format.html { redirect_to time_records_url, notice: "Time record was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_time_record
      @time_record = TimeRecord.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def time_record_params
      params.require(:time_record).permit(:comment, :time_type, :started_time, :finished_time)
    end
end
