class SnippetsController < ApplicationController
  def new
    @snippet = Snippet.new
  end

  def create
    snippet_params = params.require(:snippet).permit([:title, :work, :code_id])
    @snippet = Snippet.new snippet_params
    if @snippet.save
      redirect_to code_snippet_path(@snippet.code_id, @snippet.id)
    else
      render :new
    end
  end

  def show
    @snippet = Snippet.find params[:id]
  end

  def index
  end
end
