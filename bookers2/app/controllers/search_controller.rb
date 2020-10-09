class SearchController < ApplicationController
    before_action :authenticate_user!
  
  def search
    @model = params[:model]
    @content = params[:content]
    @method = params[:method]
    if 'user' == @model
      @user = User.search_for(@content, @method)
      @users = User.all
    else
      @book = Book.search_for(@content, @method)
      @books = Book.allgit
    end
  end
end
