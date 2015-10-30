class ReviewsController < ApplicationController
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review     = @restaurant.reviews.build(params_review)

    if @review.save
      respond_to do |format|
        format.html { redirect_to restaurant_path(@restaurant) }
        format.js {}# <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'restaurants/show' }
        format.js {}
      end
    end
  end

  private
    def params_review
      params.require(:review).permit(:content)
    end
end
