class ApplicationController < ActionController::Base
  include DeviseWhitelist
  include SetSource

  def current_user
    super || guest = OpenStruct.new(name: "Guest User", 
                                    first_name: "Guest", 
                                    email: "guest@example.com"
                                    )
  end
end
