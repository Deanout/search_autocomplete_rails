class SearchController < ApplicationController
  def index
    @results = search_for_posts

    respond_to do |format|
      format.turbo_stream do
        render turbo_stream:
            turbo_stream.update('posts',
                                partial: 'posts/posts',
                                locals: { posts: @results })
      end
    end
  end

  def suggestions
    @results = search_for_posts

    respond_to do |format|
      format.turbo_stream do
        render turbo_stream:
            turbo_stream.update('suggestions',
                                partial: 'search/suggestions',
                                locals: { results: @results })
      end
    end
  end

  private

  def search_for_posts
    if params[:query].blank?
      Post.all
    else
      Post.search(params[:query], fields: %i[title body], operator: 'or', match: :text_middle)
    end
  end
end
