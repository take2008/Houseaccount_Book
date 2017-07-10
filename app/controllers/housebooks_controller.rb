class HousebooksController < ApplicationController
  before_action :set_housebook, only: [:show, :edit, :update, :destroy]

  # GET /housebooks
  # GET /housebooks.json
  def index
    @housebooks = Housebook.all
  end

  # GET /housebooks/1
  # GET /housebooks/1.json
  def show
  end

  # GET /housebooks/new
  def new
    @housebook = Housebook.new
  end

  # GET /housebooks/1/edit
  def edit
  end

  # POST /housebooks
  # POST /housebooks.json
  def create
    @housebook = Housebook.new(housebook_params)

    respond_to do |format|
      if @housebook.save
        format.html { redirect_to @housebook, notice: 'Housebook was successfully created.' }
        format.json { render :show, status: :created, location: @housebook }
      else
        format.html { render :new }
        format.json { render json: @housebook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /housebooks/1
  # PATCH/PUT /housebooks/1.json
  def update
    respond_to do |format|
      if @housebook.update(housebook_params)
        format.html { redirect_to @housebook, notice: 'Housebook was successfully updated.' }
        format.json { render :show, status: :ok, location: @housebook }
      else
        format.html { render :edit }
        format.json { render json: @housebook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /housebooks/1
  # DELETE /housebooks/1.json
  def destroy
    @housebook.destroy
    respond_to do |format|
      format.html { redirect_to housebooks_url, notice: 'Housebook was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_housebook
      @housebook = Housebook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def housebook_params
      params.require(:housebook).permit(:Date, :Use, :Payment)
    end
end
