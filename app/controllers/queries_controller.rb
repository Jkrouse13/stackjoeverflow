class QueriesController < ApplicationController
  def index
    @queries = Query.all.page(params[:page])
  end

  def show
    @query = Query.find(params[:id])
  end

  def new
    @query = Query.new
  end

  def create
    @query = Query.create(query_params)

    if @query.save
      redirect_to @query
    else
      render :new
    end
  end

  private
  def query_params
    params.require(:query).permit(:title, :body)
  end
end
