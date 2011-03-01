class RetroactionsController < ApplicationController
  before_filter :load_mistake

  def index
    @retroactions = @mistake.retroactions
    respond_to do |format|
        format.xml  { render :xml => @retroactions }
    end
  end

  def show
    @retroaction = @user.retroacions.find(params[:id])
    respond_to do |format|
      format.xml  { @retroaction }
    end
  end

  def create
    @retroaction = @mistake.retroactions.new(params[:retroaction])
    respond_to do |format|
      if @retroaction.save
        format.html { redirect_to(@retroaction, :notice => 'User was successfully created.') }
        format.xml  { [@mistake, @retroaction] }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @retroaction.errors, :status => :unprocessable_entity }
      end
    end
  end

  private 
  def load_mistake
    @mistake = User.find(params[:user_id]).mistakes.find(params[:mistake_id])
  end
end
