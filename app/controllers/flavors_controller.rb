class FlavorsController < ApplicationController
  before_action :set_flavor, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!,  only: [:new, :show, :edit, :update, :destroy]


  # GET /flavors
  # GET /flavors.json
  def index
    @flavors = Flavor.all.order("created_at DESC")
    @this_users_flavors = Flavor.where(user_id: @user).order("created_at DESC")

  end

  # GET /flavors/1
  # GET /flavors/1.json
  def show
  end

  # GET /flavors/new
  def new
    @flavor = Flavor.new
  end

  # GET /flavors/1/edit
  def edit
  end

  # POST /flavors
  # POST /flavors.json
  def create
    @flavor = Flavor.new(flavor_params)

    respond_to do |format|

      @flavor = current_user.flavors.build(flavor_params)


      if @flavor.save
        format.html { redirect_to flavors_path, notice: 'Vote was successfully created.' }
        format.json { render :show, status: :created, location: flavors_path }
      else
        format.html { render :new }
        format.json { render json: @flavor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flavors/1
  # PATCH/PUT /flavors/1.json
  def update

    redirect_to(root_url) unless current_user.id == @flavor.user.id


    respond_to do |format|
      if @flavor.update(flavor_params)
        format.html { redirect_to flavors_path, notice: 'Vote was successfully updated.' }
        format.json { render :show, status: :ok, location: flavors_path }
      else
        format.html { render :edit }
        format.json { render json: @flavor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flavors/1
  # DELETE /flavors/1.json
  def destroy
    @flavor.destroy
    respond_to do |format|
      format.html { redirect_to flavors_url, notice: 'Flavor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flavor
      @flavor = Flavor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flavor_params
      params.require(:flavor).permit(:grape, :cherry, :user_id)
    end
end
