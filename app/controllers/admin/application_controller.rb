class Admin::ApplicationController < ActionController::Base
    layout :admin_layout

    private
    def admin_layout
        'admin'
    end
end
