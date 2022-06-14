class ReviewsController < ApplicationController
  before_action :find_book
	before_action :find_review, only: [:edit, :update, :destroy]
	before_action :authenticate_user!, only: [:new, :edit]

	def new
		@review = Review.new
	end

	def create
		@review = Review.new(review_params)
		@review.book_id = @book.id
		@review.user_id = current_user.id

		if @review.save
			redirect_to download_path(@book)
		else
			render 'new'
		end
	end

  def show
    if @books.reviews.blank?
      @average_review = 0
    else
       @average_review = @book.reviews.average(:rating).round(2)
    end
  end

	def edit
	end

	def update
		if @review.update(review_params)
			redirect_to download_path(@book)
		else
			render 'edit'
		end
	end

	def destroy
		@review.destroy
		redirect_to download_path(@book)
	end

	private

		def review_params
			params.require(:review).permit(:rating, :comment)
		end

		def find_book
			@book = Book.find(params[:book_id])
		end

		def find_review
			@review = Review.find(params[:id])
		end

end
