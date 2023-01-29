class ExceptionController < ApplicationController
    def catch_404
        redirect_to root_path
    end
end
