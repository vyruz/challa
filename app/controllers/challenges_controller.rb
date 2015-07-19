class ChallengesController < ApplicationController
  before_filter :set_category, :authenticate
  before_action :set_challenge, only: [:show, :edit, :update, :destroy]

  # GET /categories/:category_id/challenges
  # GET /categories/:category_id/challenges.json
  def index
    @challenges = Challenge.where(:category_id => @category)
    @challenges.each do |c|
        b = Bounty.where('challenge_id': c.id).take
        c.bounty_total = b.points
        c.image_path = Image.where('challenge_id': c.id).take.filename
    end
    render "index", :locals => {:category => @category.name}
  end

  # GET /challenges/1
  # GET /challenges/1.json
  def show
    image = Image.where('challenge_id': @challenge.id).first
    if image
      @challenge.image_path = image.filename
      if @category
        render "show", :locals => {:category_name => @category.name}
      end
    else
      @challenge.image_path = "profile.png"
    end

  end

  # GET /challenges/new
  def new
    @challenge = Challenge.new
  end

  # GET /challenges/1/edit
  def edit
  end

  def accept
  end

  # POST /challenges
  # POST /challenges.json
  def create
    @challenge = Challenge.new(challenge_params)

    respond_to do |format|
      if @challenge.save
        format.html { redirect_to @challenge, notice: 'Challenge was successfully created.' }
        format.json { render :show, status: :created, location: @challenge }
      else
        format.html { render :new }
        format.json { render json: @challenge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /challenges/1
  # PATCH/PUT /challenges/1.json
  def update
    respond_to do |format|
      if @challenge.update(challenge_params)
        format.html { redirect_to @challenge, notice: 'Challenge was successfully updated.' }
        format.json { render :show, status: :ok, location: @challenge }
      else
        format.html { render :edit }
        format.json { render json: @challenge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /challenges/1
  # DELETE /challenges/1.json
  def destroy
    @challenge.destroy
    respond_to do |format|
      format.html { redirect_to challenges_url, notice: 'Challenge was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def category_name
    return unless @challenge.category_id
    @category ||= Category.find(@challenge.category_id).name
  end
  helper_method :category_name
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_challenge
      @challenge = Challenge.find(params[:id])
    end
    def set_category
      return unless params[:category_id]
      @category ||= Category.find(params[:category_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def challenge_params
      params.require(:challenge).permit(:name, :description, :image, :video, :category_id)
    end
end
