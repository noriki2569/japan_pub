class Admin::HomesController < ApplicationController
  def top
    @pubs = Pub.all
    @user = current_user
  end
end
