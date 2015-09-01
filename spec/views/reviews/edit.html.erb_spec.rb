require 'rails_helper'

RSpec.describe "reviews/edit", type: :view do
  before(:each) do
    @review = assign(:review, Review.create!(
      :review_text => "MyText",
      :rating => 1
    ))
  end

  it "renders the edit review form" do
    render

    assert_select "form[action=?][method=?]", review_path(@review), "post" do

      assert_select "textarea#review_review_text[name=?]", "review[review_text]"

      assert_select "input#review_rating[name=?]", "review[rating]"
    end
  end
end
