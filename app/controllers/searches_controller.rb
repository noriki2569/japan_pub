class SearchesController < ApplicationController
  def search
    if params[:keyword]
      @pubs = Pub.search(params[:keyword])
    end
    @user = current_user
  end
end
