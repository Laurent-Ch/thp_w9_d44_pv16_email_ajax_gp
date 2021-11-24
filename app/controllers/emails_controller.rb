class EmailsController < ApplicationController

  def index
    @emails = Email.all
  end

  def show
    @email = Email.find(params[:id])
    respond_to do |format|
      format.html { }
      format.js { }
    end
  end

  def create
    @email = Email.create(object: Faker::Name.unique.name, body: Faker::ChuckNorris.fact)
    respond_to do |format|
      format.html { redirect_to root }
      format.js { }
    end
  end

  def destroy
    @email = Email.find(params[:id])
    @email.destroy

    respond_to do |format|
      format.html { redirect_to root }
      format.js  { }
    end
  end


end