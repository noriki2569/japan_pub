class Admin::HomesController < ApplicationController
  def top
    @pubs = Pub.all
  end
end
