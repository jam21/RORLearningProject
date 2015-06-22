class AndroidSampleAppUserController < ApplicationController
  def index
    @androidSampleAppUser = AndroidSampleAppUser.all

    respond_to do |format|

      format.json { render json: @androidSampleAppUser }
    end
  end
  def new
    @androidSampleAppUser = AndroidSampleAppUser.new(params[:user])
    respond_to do |format|
      if @androidSampleAppUser.save
        format.json { render json: "{message:\"User saved\",status:200}" }
      else
        format.json { render json: "{message:\"User not saved\",status:403}" }
      end
    end
  end

end