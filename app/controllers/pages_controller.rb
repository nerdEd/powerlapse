class PagesController < ApplicationController
  def welcome
    @snapshots = Snapshot.all
  end
end
