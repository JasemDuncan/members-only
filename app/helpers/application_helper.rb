module ApplicationHelper
  def registration_and_session_links
    if signed_in?
      link_to 'Logout', destroy_usuario_session_path, method: :delete,
                                                      data: { confimation: 'are you sure?' },
                                                      class: 'nav-link text-dark'
    else
      link_to 'Sign up', new_usuario_registration_path, class: 'nav-link text-dark'

    end
  end

  def signed_in_link
    if signed_in?
        link_to "Create a Post", new_post_path,  class: "nav-link text-dark"
    else
        link_to 'Log in', new_usuario_session_path, class: 'nav-link text-dark'
    end    
  end
 

  def error_flashes
    if flash[:notice]
      content_tag(:p, flash[:notice], class: 'alert alert-success')
    elsif flash[:alert]
      content_tag(:p, flash[:alert], class: 'alert alert-danger')
    end
  end
end
