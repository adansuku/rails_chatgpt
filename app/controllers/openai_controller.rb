class OpenaiController < ApplicationController
  def index
    return unless params[:query]

    @response = OpenaiService.new(params[:query]).call
  end
end
