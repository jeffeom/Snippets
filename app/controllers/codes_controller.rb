class CodesController < ApplicationController
  def show
    @code = Code.find params[:id]
    @snippets = Snippet.all
  end
end
