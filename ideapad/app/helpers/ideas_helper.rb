module IdeasHelper

  def creator_unicorn_img(idea, size=64)
    if idea.user.present?
      image_tag "http://unicornify.appspot.com/avatar/#{idea.user.email_md5}?s=#{size}",
                alt: idea.user.email, title: idea.user.email
    end
  end

end
