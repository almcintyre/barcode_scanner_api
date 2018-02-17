class UpcsController < ApplicationController
  before_action :set_todo, only: [:show, :update, :destroy]

 # GET /todos
 def index
   @upcs = Upc.all
   json_response(@upcs)
 end

 # POST /todos
 def create
   @upc = Upc.create!(upc_params)
   json_response(@upc, :created)
 end

 # GET /todos/:id
 def show
   json_response(@upc)
 end

 # PUT /todos/:id
 def update
   @upc.update(upc_params)
   head :no_content
 end

 # DELETE /todos/:id
 def destroy
   @upc.destroy
   head :no_content
 end
 
  private

  def upc_params
    # whitelist params
    params.permit(:upc, :product_name)
  end

  def set_todo
    @upc = Upc.find(params[:id])
  end
end
