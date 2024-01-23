# app/controllers/registrations_controller.rb
class RegistrationsController < Devise::RegistrationsController
  def create
    super do |resource|
      Musician.create(user: resource)
    end
  end
end
