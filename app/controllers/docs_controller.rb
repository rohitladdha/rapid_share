class DocsController < ApplicationController
  def index
    @docs = Doc.where(user: current_user)
 end
 
 def new
    @doc = Doc.new
 end
 
 def create
    @doc = Doc.new(doc_params)
    byebug
    
    if @doc.save
       redirect_to docs_path, notice: "The doc #{@doc.name} has been uploaded."
    else
       render "new"
    end
    
 end
 
 def destroy
    @doc = Doc.find(params[:id])
    @doc.destroy
    redirect_to docs_path, notice:  "The doc #{@doc.name} has been deleted."
 end
 
 private
    def doc_params
      byebug
      name = params["doc"]["attachment"].original_filename
      params.require(:doc).permit(:attachment).merge(user_id: current_user.id, name: name)
   end
end
