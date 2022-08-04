class BooksController < ApplicationController
  def index
    if params[:query]
      response = Book.__elasticsearch__.search(
        query: {
          multi_match: {
            query: params[:query],
            fields: ['name', 'author.first_name', 'author.last_name', 'isbn']
          }
        }
      ).results 
      @books = response.results
    else
      @books = Book.all
    end
    # render json: {
    #   results: response.results,
    #   total: response.total
    # }
  end
end
