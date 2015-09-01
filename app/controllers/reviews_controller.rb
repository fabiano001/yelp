class ReviewsController < InheritedResources::Base

  private

    def review_params
      params.require(:review).permit(:review_text, :rating)
    end
end

