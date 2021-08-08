module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    super || guest_user        # from Devise
  end

  def guest_user
    OpenStruct.new(name: "Guest User",
                   first_name: "Guest",
                   last_name: "User",
                   email: "guest@guest"
                  )
  end
end