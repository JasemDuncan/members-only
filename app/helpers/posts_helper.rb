module PostsHelper
  def image_helper
    content_tag(:p, content_tag(image_tag('https://bulma.io/images/placeholders/64x64.png', class: 'img-container')), class: 'image is-64x64') if signed_in?
  end

  def show_name(post)
    content_tag(:p, post.usuario.name, class: 'text-center') if signed_in?
  end
end
