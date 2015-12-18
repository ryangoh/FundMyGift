class FrontpagesController < ApplicationController
  before_action :set_frontpage, only: [:show, :edit, :update, :destroy]

  def faq
  end
  # GET /frontpages
  # GET /frontpages.json
  def index
    @frontpages = Frontpage.all
  end

  # GET /frontpages/1
  # GET /frontpages/1.json
  def show
  end

  # GET /frontpages/new
  def new
    @frontpage = Frontpage.new
  end

  # GET /frontpages/1/edit
  def edit
  end

  # POST /frontpages
  # POST /frontpages.json
  def create
    @frontpage = Frontpage.new(frontpage_params)

    respond_to do |format|
      if @frontpage.save
        format.html { redirect_to @frontpage, notice: 'Frontpage was successfully created.' }
        format.json { render :show, status: :created, location: @frontpage }
      else
        format.html { render :new }
        format.json { render json: @frontpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /frontpages/1
  # PATCH/PUT /frontpages/1.json
  def update
    respond_to do |format|
      if @frontpage.update(frontpage_params)
        format.html { redirect_to @frontpage, notice: 'Frontpage was successfully updated.' }
        format.json { render :show, status: :ok, location: @frontpage }
      else
        format.html { render :edit }
        format.json { render json: @frontpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /frontpages/1
  # DELETE /frontpages/1.json
  def destroy
    @frontpage.destroy
    respond_to do |format|
      format.html { redirect_to frontpages_url, notice: 'Frontpage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_frontpage
      @frontpage = Frontpage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def frontpage_params
      params[:frontpage]
    end
end
