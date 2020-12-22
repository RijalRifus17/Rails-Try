class CobaController < ApplicationController
    def index
        msg = { 'status' => 'success' }
        render json: msg
    end

    
    
end
