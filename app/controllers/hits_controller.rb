class HitsController < ApplicationController
  before_filter :load_user

  def index
    @hits = @user.hits.all
    respond_to do |format|
        format.xml  { @hits }
    end
  end

  def show
    @hit = @user.hits.find(params[:id])
    respond_to do |format|
        format.xml  { @hit }
    end
  end

  def create
    @hit = @user.hits.new(params[:hit])
    respond_to do |format|
      if @hit.save
        format.html { redirect_to(@hit, :notice => 'Hit was successfully created.') }
        format.xml  { [@user, @hit] }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @hit.errors, :status => :unprocessable_entity }
      end
    end
  end

  private
  def load_user
    @user = User.find(params[:user_id])
  end
end
