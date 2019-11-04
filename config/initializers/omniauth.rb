Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, FACEBOOK_CONFIG['app_id'], FACEBOOK_CONFIG['secret'], {:scope => 'email,user_age_range,user_birthday,user_friends,user_gender,user_hometown,user_likes,user_link,user_location,user_photos,user_posts,user_status'}
  end