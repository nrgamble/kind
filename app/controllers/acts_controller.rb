class ActsController < ApplicationController

  before_action :authenticate_user!, :only => [ :new ]

  def index
    @acts = Act.all
  end

  def new
    @act = Act.new
  end

  def create
    @act = Act.new(act_params)
    @act.user_id = current_user.id
    @act.challenge_id = current_user.current_challenge.id
    @act.date = Date.today

    if @act.save
      redirect_to acts_path
    else
      render :action => :new
    end
  end

  private

    def act_params
      params.require(:act).permit(:act, :comment)
    end

end
