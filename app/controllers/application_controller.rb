class ApplicationController < ActionController::Base

    private 
        def after_sign_in_path_for(resource)
            posts_url
        end
   
        def after_sign_out_path_for(resource)
            "/" 
        end
end
