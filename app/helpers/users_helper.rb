module UsersHelper

    # Returns the Gravatar for the given user.
  def gravatar_for(user)
    hash = Digest::MD5.hexdigest(user.email.downcase)
    gravatar_url = "https://www.gravatar.com/avatar/#{hash}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
