class JobcardListsController < ApplicationController
  before_action :set_jobcard_list, only: [:show, :edit, :update, :destroy]

  # GET /jobcard_lists
  # GET /jobcard_lists.json
  def index
    @jobcard_lists = JobcardList.all
  end

  # GET /jobcard_lists/1
  # GET /jobcard_lists/1.json
  def show
  end

  # GET /jobcard_lists/new
  def new
    @jobcard_list = JobcardList.new
  end

  # GET /jobcard_lists/1/edit
  def edit
  end

  # POST /jobcard_lists
  # POST /jobcard_lists.json
  def create
    @jobcard_list = JobcardList.new(jobcard_list_params)

    respond_to do |format|
      if @jobcard_list.save
        format.html { redirect_to @jobcard_list, notice: 'Jobcard list was successfully created.' }
        format.json { render :show, status: :created, location: @jobcard_list }
      else
        format.html { render :new }
        format.json { render json: @jobcard_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobcard_lists/1
  # PATCH/PUT /jobcard_lists/1.json
  def update
    respond_to do |format|
      if @jobcard_list.update(jobcard_list_params)
        format.html { redirect_to @jobcard_list, notice: 'Jobcard list was successfully updated.' }
        format.json { render :show, status: :ok, location: @jobcard_list }
      else
        format.html { render :edit }
        format.json { render json: @jobcard_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobcard_lists/1
  # DELETE /jobcard_lists/1.json
  def destroy
    @jobcard_list.destroy
    respond_to do |format|
      format.html { redirect_to jobcard_lists_url, notice: 'Jobcard list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jobcard_list
      @jobcard_list = JobcardList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jobcard_list_params
      params.require(:jobcard_list).permit(:title, :Description)
    end
end
