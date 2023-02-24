class BudgetsGroupsController < ApplicationController
  before_action :set_budgets_group, only: %i[ show edit update destroy ]

  # GET /budgets_groups or /budgets_groups.json
  def index
    @budgets_groups = BudgetsGroup.all
  end

  # GET /budgets_groups/1 or /budgets_groups/1.json
  def show
  end

  # GET /budgets_groups/new
  def new
    @budgets_group = BudgetsGroup.new
  end

  # GET /budgets_groups/1/edit
  def edit
  end

  # POST /budgets_groups or /budgets_groups.json
  def create
    @budgets_group = BudgetsGroup.new(budgets_group_params)

    respond_to do |format|
      if @budgets_group.save
        format.html { redirect_to budgets_group_url(@budgets_group), notice: "Budgets group was successfully created." }
        format.json { render :show, status: :created, location: @budgets_group }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @budgets_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /budgets_groups/1 or /budgets_groups/1.json
  def update
    respond_to do |format|
      if @budgets_group.update(budgets_group_params)
        format.html { redirect_to budgets_group_url(@budgets_group), notice: "Budgets group was successfully updated." }
        format.json { render :show, status: :ok, location: @budgets_group }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @budgets_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /budgets_groups/1 or /budgets_groups/1.json
  def destroy
    @budgets_group.destroy

    respond_to do |format|
      format.html { redirect_to budgets_groups_url, notice: "Budgets group was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_budgets_group
      @budgets_group = BudgetsGroup.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def budgets_group_params
      params.require(:budgets_group).permit(:group_id, :budget_id)
    end
end
