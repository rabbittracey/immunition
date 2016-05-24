class PatientImmunizationsController < ApplicationController
  before_action :set_patient_immunization, only: [:show, :edit, :update, :destroy]

  # GET /patient_immunizations
  # GET /patient_immunizations.json
  def index
    @patient_immunizations = PatientImmunization.all
  end

  # GET /patient_immunizations/1
  # GET /patient_immunizations/1.json
  def show
  end

  # GET /patient_immunizations/new
  def new
    @patient_immunization = PatientImmunization.new
  end

  # GET /patient_immunizations/1/edit
  def edit
  end

  # POST /patient_immunizations
  # POST /patient_immunizations.json
  def create
    @patient_immunization = PatientImmunization.new(patient_immunization_params)

    respond_to do |format|
      if @patient_immunization.save
        format.html { redirect_to @patient_immunization, notice: 'Patient immunization was successfully created.' }
        format.json { render :show, status: :created, location: @patient_immunization }
      else
        format.html { render :new }
        format.json { render json: @patient_immunization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patient_immunizations/1
  # PATCH/PUT /patient_immunizations/1.json
  def update
    respond_to do |format|
      if @patient_immunization.update(patient_immunization_params)
        format.html { redirect_to @patient_immunization, notice: 'Patient immunization was successfully updated.' }
        format.json { render :show, status: :ok, location: @patient_immunization }
      else
        format.html { render :edit }
        format.json { render json: @patient_immunization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patient_immunizations/1
  # DELETE /patient_immunizations/1.json
  def destroy
    @patient_immunization.destroy
    respond_to do |format|
      format.html { redirect_to patient_immunizations_url, notice: 'Patient immunization was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient_immunization
      @patient_immunization = PatientImmunization.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_immunization_params
      params.require(:patient_immunization).permit(:title, :date_registered, :notes)
    end
end
