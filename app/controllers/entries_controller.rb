class EntriesController < ApplicationController

def index
  @entries=Entry.all
  render :index
end

def show
  @entry = Entry.find(params[:id])
  render :show
end

def new
  @entry = Entry.new
  render :new
end

def create
  @entry = Entry.new

  @entry.word = params[:entry][:word]
  @entry.language = params[:entry][:language]
  @entry.definition = params[:entry][:definition]


  if @entry.save
    # if the picture gets saved, generate a get request to "/pictures" (the index)
    redirect_to entries_url
  else
    # otherwise render new.html.erb
    render :new
  end
end

def edit
  @entry = Entry.find(params[:id])
  render :edit
end

def update
  @entry = Entry.find(params[:id])

  @entry.word = params[:entry][:word]
  @entry.language = params[:entry][:language]
  @entry.definition = params[:entry][:definition]


  if @entry.save
    redirect_to entry_url(params[:id])
  else
    redirect_to entry_url(params[:id])
  end
end

def destroy
  @entry = Entry.find(params[:id])
  @entry.destroy
  redirect_to ('/index')
end

end
