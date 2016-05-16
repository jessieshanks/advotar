class SquadsController < ApplicationController
  # before_action :set_user, :set
  # before_action :set_squad, only: [:show, :edit, :update, :destroy]


  # GET /squads
  def index
    if current_user.has_squad?
      redirect_to squad_path(current_user.squad)
    else
      redirect_to new_squad_path
    end
  end


  # GET /squads/1
  def show
    current_user.squad.editable
    @squad = current_user.squad
  end


  # GET /squads/new
  def new
    @squad = Squad.new
  end


  # GET /squads/1/edit
  def edit
    @squad = current_user.squad
  end


  # POST /squads
  def create
    @squad = Squad.new(squad_params)
    # @squad.build_warrior
    respond_to do |format|
      if @squad.save
        @squad.users << current_user
        @squad.editable
        format.html { redirect_to @squad, notice: 'Squad was successfully created.' }
        format.json { render :show, status: :created, location: @squad }
      else
        format.html { render :new }
        format.json { render json: @squad.errors, status: :unprocessable_entity }
      end
    end
  end


  # PATCH/PUT /squads/1
  # PATCH/PUT /squads/1.json
  def update
    @squad = current_user.squad
    respond_to do |format|
      if @squad.update(squad_params)
        @squad.editable
        format.html { redirect_to @squad, notice: 'Squad was successfully updated.' }
        format.json { render :show, status: :ok, location: @squad }
      else
        format.html { render :edit }
        format.json { render json: @squad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /squads/1
  # DELETE /squads/1.json
  def destroy
    @squad.destroy
    respond_to do |format|
      format.html { redirect_to squads_url, notice: 'Squad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_user
    #   @user = User.find(params[:id])
    # end

    def set_squad
        @squad = current_user.squad
    end

    # def set_squad
    #   @squad = Squad.find(params[:id])

    #   # @squad = squad.last
    #   # @squad = Squad.where("user_id" => session[user_id]).first
    #   # @users = @squad.users
    #   # puts "method"
    #   # puts @squad
    #   # puts @user
    #   # @squad = Squad.find(params[:id])
    # end


    def squad_params
      params.require(:squad).permit(:name, :motto, warriors_attributes: [:id, :name, :birthdate, :color, :squad_id])
    end

end
