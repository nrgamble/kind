module ApplicationHelper

  # Quick and very dirty way to determine this, as for some reason Devise doesn't
  def sign_in_failed?
    ! request.referer.index(new_user_session_path).nil?
  end

end
