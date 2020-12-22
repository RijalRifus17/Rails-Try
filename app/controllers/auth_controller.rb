class AuthController < ApplicationController
    def authenticate
        msg = { "status" => params['email'] }
        render json: msg
    end
    
end
