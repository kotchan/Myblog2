class MessageTest2sController < ApplicationController
  before_action :set_message_test2, only: [:show, :edit, :update, :destroy]

  # GET /message_test2s
  # GET /message_test2s.json
  def index
    @message_test2s = MessageTest2.all
  end

  # GET /message_test2s/1
  # GET /message_test2s/1.json
  def show
  end

  # GET /message_test2s/new
  def new
    @message_test2 = MessageTest2.new
  end

  # GET /message_test2s/1/edit
  def edit
  end

  # POST /message_test2s
  # POST /message_test2s.json
  def create
    @message_test2 = MessageTest2.new(message_test2_params)

    respond_to do |format|
      if @message_test2.save
        format.html { redirect_to @message_test2, notice: 'Message test2 was successfully created.' }
        format.json { render :show, status: :created, location: @message_test2 }
      else
        format.html { render :new }
        format.json { render json: @message_test2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /message_test2s/1
  # PATCH/PUT /message_test2s/1.json
  def update
    respond_to do |format|
      if @message_test2.update(message_test2_params)
        format.html { redirect_to @message_test2, notice: 'Message test2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @message_test2 }
      else
        format.html { render :edit }
        format.json { render json: @message_test2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /message_test2s/1
  # DELETE /message_test2s/1.json
  def destroy
    @message_test2.destroy
    respond_to do |format|
      format.html { redirect_to message_test2s_url, notice: 'Message test2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message_test2
      @message_test2 = MessageTest2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def message_test2_params
      params.require(:message_test2).permit(:title, :message)
    end
end
