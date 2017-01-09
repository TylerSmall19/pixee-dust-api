class DaysController < ApplicationController
  def create
    p params
    day = Day.new(day_params)
    if day.save
      render json: { day: day, thoughts: day.thoughts }
    else
      render json: {
        errors: day.errors.full_messages
        },
        status: 422
    end
  end

  private
  def day_params
    params.require(:days).permit(:thoughts => [])
  end
end
