class AppsController < ApplicationController

  def show
    @apps = App.all
    @app = App.new
  end

  def create
    @app = App.create(app_params)
    redirect_to root_path
  end

  private

    def app_params
      params.require(:app).permit(:name, :description)
    end

end
