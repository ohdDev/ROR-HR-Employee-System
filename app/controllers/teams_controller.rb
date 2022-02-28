class TeamsController < ApplicationController
  before_action :set_team, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /teams or /teams.json
  def index
    @teams = Team.all
  end

  # GET /teams/1 or /teams/1.json
  def show
  end

  # GET /teams/new
  def new
    @team = Team.new
  end

  # GET /teams/1/edit
  def edit
  end

  # POST /teams or /teams.json
  def create

    if !(team_params["employees"]).nil? 
      team_members = team_params["employees"].map{|member| Employee.find(member.to_i)}
      t_p = team_params
      t_p["employees"] = team_members
      if !(team_params["leader_id"]).nil? 
        team_leader = Employee.find(team_params["leader_id"].to_i)
        t_p["employees"].push(team_leader)
      end
      @team = Team.new(t_p)
    else
      @team = Team.new(team_params)
    end

    respond_to do |format|
      if @team.save

        format.html { redirect_to team_url(@team), notice: "Team was successfully created." }
        format.json { render :show, status: :created, location: @team }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teams/1 or /teams/1.json
  def update

    t_p = team_params

    if !(team_params["employees"]).nil? 
      team_members = team_params["employees"].map{|member| Employee.find(member.to_i)}
      t_p["employees"] = team_members
      if !(team_params["leader_id"]).nil? 
        team_leader = Employee.find(team_params["leader_id"].to_i)
        t_p["employees"].push(team_leader)
      end
      # @team = Team.update(t_p)
    end

    respond_to do |format|
      if @team.update(t_p)
        format.html { redirect_to team_url(@team), notice: "Team was successfully updated." }
        format.json { render :show, status: :ok, location: @team }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teams/1 or /teams/1.json
  def destroy
    @team.destroy

    respond_to do |format|
      format.html { redirect_to teams_url, notice: "Team was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team
      @team = Team.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def team_params
      params.require(:team).permit(:name, :description,:leader_id, :division_id, :employees => [])
    end
end
