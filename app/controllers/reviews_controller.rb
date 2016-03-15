class ReviewsController < ApplicationController

  def index
    @review = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = @review.build(create_params)

    if @review.save
      redirect_to @review
    else
      render :new
    end
  end

  end

  def edit
    find_review
  end

  def update
    find_review
    if @review.update_attributes(create_params)
    else
      render :edit
    end
  end

  def show

  end

   def destroy
    if @review.destroy
      redirect_to @customer
    else
      render :new
    end
  end


  private
  def find_review
    @review = Review.find(params[:id])
  end

  def create_params
    params.require(:review).permit(:registration_plate, :review_maker, :color, :mileage)
  end
end
