module PostsHelper
  def render_post_ceonten(post)
    simple_format(post.content)
  end
end
