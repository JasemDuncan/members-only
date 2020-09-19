module PostsHelper
  def image_helper
    content_tag(:div, content_tag(:div, content_tag(:p, content_tag(image_tag('https://bulma.io/images/placeholders/64x64.png', alt: 'Continue', class: 'img-container')), class: 'image is-64x64')), class: 'col-2 mx-auto bg-light') if signed_in?
  end
end
