class ImagesController < ApplicationController


  def new
    @image = Image.new
  end

  def create
    @image = Image.create(user_params)
  end

  def delete_image
    image = Image.find_by_id params[:id]
    image.delete
    return true
  end

  private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.

  def user_params
    params.require(:image).permit(:avatar)
  end

end
