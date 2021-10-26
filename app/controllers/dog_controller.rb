class DogController < ApplicationController
  def create
    dog = Dog.new(
      name: params[:name],
      age: params[:email],
      breed: params[:password]
    )
    if user.save
      dog.save
      render json: { message: "Dog created successfully" }, status: :created
    else
      render json: { message: "Dog created successfully" }, status: :bad_request
  end
end
