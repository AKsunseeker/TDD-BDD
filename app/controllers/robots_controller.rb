class RobotsController < ApplicationController
  def index
    @robots = Robot.all
  end

  def show
    @robot = Robot.find(params[:id])
  end

  def new
    
  end

  def create
    robot = Robot.new(robot_params)
    if robot.save
      flash[:success] = "#{robot.name} Created"
      redirect_to robots_path
    else  
      render :new
    end
  end

  def edit
    @robot = Robot.find(params[:id])
  end

  def update
    robot = Robot.find(params[:id])
    if robot.update(robot_params)
      flash[:success] = "#{robot.name} updated"
      redirect_to robots_path
    else
      render :edit
    end
  end

  def destroy
    robot = Robot.find(params[:id])
    robot.destroy
    redirect_to robots_path
  end
   
  private
  
  def robot_params
     params.require(:robot).permit(:name, :friendly)
  end 
end
