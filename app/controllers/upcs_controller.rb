class UpcsController < ApplicationController

 # GET /todos
 def index
   @upcs = Upc.all
   json_response(@upcs)
 end

 # POST /todos
 def create
   @upc = Upc.create!(upc_params)
   head :no_content
 end

 # GET /todos/:id
 def show
   render template: "upcs/index"
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
end
