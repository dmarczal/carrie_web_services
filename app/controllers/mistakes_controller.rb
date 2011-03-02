class MistakesController < ApplicationController
  before_filter :load_user #:authenticate_user!

  def index
    @mistakes = @user.mistakes #TODO: where(:oa => params[:oa])
    respond_to do |format|
        format.xml  { @mistakes }
    end
  end

  def show
    @mistake = @user.mistakes.find(params[:id])
    respond_to do |format|
      format.xml  { @mistake }
    end
  end

  def create
    @mistake = User.find(params[:user_id]).mistakes.new(params[:mistake])
    respond_to do |format|
      if @mistake.save
        format.html { redirect_to(@mistake, :notice => 'User was successfully created.') }
        format.xml  { [@user, @mistake] }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @mistake.errors, :status => :unprocessable_entity }
      end
    end
  end

  private 
  def load_user
    @user = User.find(params[:user_id])
  end
end
