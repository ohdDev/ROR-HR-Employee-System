class DivisionsController < ApplicationController
  before_action :set_division, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /divisions or /divisions.json
  def index
    @divisions = Division.all
    # @division = Division.find(params[:id])
  
    # @teams=[]
    # @divs_teams=[]
    # @divisions.each do |division|
    #   division.teams.each{|team|  @teams.push(team.id) }
    #   @divs_teams.push(@teams)
    #   @teams=[]
    # end


  end



  # GET /divisions/1 or /divisions/1.json
  def show
  end

  # GET /divisions/new
  def new
    @division = Division.new
    # 2.times { @division.teams.build }
    @division.teams.build
  end

  # GET /divisions/1/edit
  def edit
  end

  # POST /divisions or /divisions.json
  def create
    
    # d_p = division_params

    # if !(d_p["teams_attributes"]["id"]).nil? 
    #   team_employees = d_p["teams_attributes"]["employees"].map{|employee| Employee.find(employee.to_i)}
    #   d_p["teams_attributes"]["employees"] = team_employees
    # end

    # if !(d_p["teams_attributes"]["leader_id"]).nil? 
    #   team_leader = Employee.find(d_p["teams_attributes"]["leader_id"].to_i)
    #   # d_p["teams_attributes"]["employees"].push(team_leader)
    #   team_leader.team_id = d_p["teams_attributes"]["id"]
      
    # end
    
    # if !(d_p["teams"]).nil? 
    #   division_teams = d_p["teams"].map{|team| Team.find(team.to_i)}
    #   d_p["teams"] = division_teams     
    # end

    @division = Division.new(division_params)

    # if !(division_params["teams_attributes"]["employees"]).nil? 
      
      
    #   @division = Division.new(d_p)
    # else
    #   @division = Division.new(division_params)
    # end

    respond_to do |format|
      if @division.save
        format.html { redirect_to division_url(@division), notice: "Division was successfully created." }
        format.json { render :show, status: :created, location: @division }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @division.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /divisions/1 or /divisions/1.json
  def update
    # @division.teams.push(@teams)
   
    # division_name = params["division"]["name"]
    # division_teams = division_params["teams"].map{|team| Team.find(team.to_i)}
    # division_params["teams"] = division_teams
    # d_p = division_params
    # d_p["teams"] = division_teams
    # p "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    # p d_p
    # p "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    # @division.update(teams: division_teams)


    # d_p = division_params

    # if !(division_params["teams"]).nil? 
    #   division_teams = division_params["teams"].map{|team| Team.find(team.to_i)}
    #   d_p["teams"] = division_teams
    # end


    respond_to do |format|
      if @division.update(division_params)

        format.html { redirect_to division_url(@division), notice: "Division was successfully updated." }
        format.json { render :show, status: :ok, location: @division }

      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @division.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /divisions/1 or /divisions/1.json
  def destroy
    @division.destroy
    respond_to do |format|
      format.html { redirect_to divisions_url, notice: "Division was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_division
      @division = Division.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def division_params
      params.require(:division).permit(:name, :description, :employee_id, team_ids: [])
    end
end
