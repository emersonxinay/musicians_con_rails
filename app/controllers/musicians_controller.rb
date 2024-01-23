# app/controllers/musicians_controller.rb
class MusiciansController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def new
    @musician = Musician.new
  end

  def create
    @musician = current_user.build_musician(musician_params)

    if @musician.save
      redirect_to @musician, notice: 'Perfil de músico creado exitosamente.'
    else
      render :new
    end
  end
  
  def show
    @musician = current_user.musician
  end

  def update
    @musician = current_user.musician
    if @musician.update(musician_params)
      redirect_to @musician, notice: 'Perfil de músico actualizado exitosamente.'
    else
      render :show
    end
  end

  private

  def musician_params
    params.require(:musician).permit(:availability)
  end
end
