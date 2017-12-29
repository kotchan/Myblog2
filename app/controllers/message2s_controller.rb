class Message2sController < ApplicationController
  before_action :set_message2, only: [:show, :edit, :update, :destroy]

  # GET /message2s
  # GET /message2s.json
  def index
    @message2s = Message2.all
  end

  # GET /message2s/1
  # GET /message2s/1.json
  def show
  end

  # GET /message2s/new
  def new
    @message2 = Message2.new
  end

  # GET /message2s/1/edit
  def edit
  end

  # POST /message2s
  # POST /message2s.json
  def create
    @message2 = Message2.new(message2_params)

    respond_to do |format|
      if @message2.save
        format.html { redirect_to @message2, notice: 'Message2 was successfully created.' }
        format.json { render :show, status: :created, location: @message2 }
      else
        format.html { render :new }
        format.json { render json: @message2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /message2s/1
  # PATCH/PUT /message2s/1.json
  def update
    respond_to do |format|
      if @message2.update(message2_params)
        format.html { redirect_to @message2, notice: 'Message2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @message2 }
      else
        format.html { render :edit }
        format.json { render json: @message2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /message2s/1
  # DELETE /message2s/1.json
  def destroy
    @message2.destroy
    respond_to do |format|
      format.html { redirect_to message2s_url, notice: 'Message2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message2
      @message2 = Message2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def message2_params
      params.require(:message2).permit(:title, :message)
    end
end
