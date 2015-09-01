require 'rails_helper'

RSpec.describe "reviews/new", type: :view do
  before(:each) do
    assign(:review, Review.new(
      :review_text => "MyText",
      :rating => 1
    ))
  end

  it "renders new review form" do
    render

    assert_select "form[action=?][method=?]", reviews_path, "post" do

      assert_select "textarea#review_review_text[name=?]", "review[review_text]"

      assert_select "input#review_rating[name=?]", "review[rating]"
    end
  end
end
