class CareplansController < ApplicationController
  before_action :set_careplan, only: [:show, :edit, :update, :destroy]

  # GET /careplans
  # GET /careplans.json
  def index
    #@careplans = Careplan.all
    @customer = Customer.where(:id => params[:customer_id]).first
    @careplans = @customer.careplans.all
  end

  # GET /careplans/1
  # GET /careplans/1.json
  def show
  end

  # GET /careplans/new
  def new
    # @careplan = Careplan.new
    @customer = Customer.where(:id => params[:customer_id]).first
    @careplan = @customer.careplans.build
  end

  # GET /careplans/1/edit
  def edit
  end

  # POST /careplans
  # POST /careplans.json
  def create
    #@careplan = Careplan.new(careplan_params)
    @customer = Customer.where(:id => params[:customer_id]).first
    @careplan = @customer.careplans.build(careplan_params)

    respond_to do |format|
      if @careplan.save
        format.html { redirect_to [@customer,@careplan], notice: 'Careplan was successfully created.' }
        format.json { render :show, status: :created, location: @careplan }
      else
        format.html { render :new }
        format.json { render json: @careplan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /careplans/1
  # PATCH/PUT /careplans/1.json
  def update
    respond_to do |format|
      if @careplan.update(careplan_params)
        format.html { redirect_to [@customer,@careplan], notice: 'Careplan was successfully updated.' }
        format.json { render :show, status: :ok, location: @careplan }
      else
        format.html { render :edit }
        format.json { render json: @careplan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /careplans/1
  # DELETE /careplans/1.json
  def destroy
    @careplan.destroy
    respond_to do |format|
      format.html { redirect_to careplans_url, notice: 'Careplan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_careplan
      #@careplan = Careplan.find(params[:id])
      @customer = Customer.where(:id => params[:customer_id]).first
      @careplan = @customer.careplans.where(:id => params[:id]).first
    end

    # Only allow a list of trusted parameters through.
    def careplan_params
      params.require(:careplan).permit(:customer_id, :create_plan, :update_plan, :care_task, :long_time_care_goal, :short_time_care_goal, :user_wants, :family_wants, :situation_achieved_goal)
    end
end
