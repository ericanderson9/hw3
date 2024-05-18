class EntriesController < ApplicationController

  def index
    @entries = Entry.all
  end

  def new
  end

  def create
    @entry = Entry.new
    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry.save
    redirect_to "/entries"
  end

end
