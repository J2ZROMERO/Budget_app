class BudgetsController < ApplicationController
  before_action :set_budget, only: %i[ show edit update destroy ]

  # GET /budgets or /budgets.json
  def index
    @budgets = BudgetsGroup.where(group_id: params[:group_id]).order(created_at: :desc)
    
  end

  # GET /budgets/1 or /budgets/1.json
  def show
  end

  # GET /budgets/new
  def new
    @budget = Budget.new
  end

  # GET /budgets/1/edit
  def edit
  end

  # POST /budgets or /budgets.json
 def create
    @budget = Budget.new(budget_params.merge(user_id: @current_user.id))

    respond_to do |format|
      if @budget.save
        @budget_group = BudgetsGroup.new( budget_params_group.merge(budget_id: @budget.id))
        if @budget_group.save
          format.html { redirect_to group_budgets_path(params[:group_id]), notice: "Budget was successfully created." }
          format.json { render :show, status: :created, location: @budget }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @budget_group.errors, status: :unprocessable_entity }
        end
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @budget.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /budgets/1 or /budgets/1.json
  def update
    respond_to do |format|
      if @budget.update(budget_params)
        format.html { redirect_to budget_url(@budget), notice: "Budget was successfully updated." }
        format.json { render :show, status: :ok, location: @budget }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @budget.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /budgets/1 or /budgets/1.json
  def destroy
    @budget.destroy

    respond_to do |format|
      format.html { redirect_to group_budgets_path(params[:group_id]), notice: "Budget was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_budget
      @budget = Budget.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    

    def budget_params
      params.require(:budget).permit(:name, :amount,:group_id).slice(:name, :amount)
    end
    
    def budget_params_group
      params.require(:budget).permit(:name, :amount,:group_id).slice(:group_id)
    end
end
