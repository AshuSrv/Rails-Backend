class User < ApplicationRecord
    # def self.find_or_create_from_userinfo(userinfo)
    #     user = where(uid: userinfo['uid']).first_or_create
    #     user.update(
    #         username: userinfo['username'],
    #         accessToken: userinfo['accessToken'],
    #         data_access_expiration_time: userinfo['data_access_expiration_time'],
    #         expiresIn: userinfo['expiresIn'],
    #         signedRequest: userinfo['signedRequest'],
    #     )
    #     user
    # end

        # def self.koala(auth)
        #   access_token = auth['token']
        #   facebook = Koala::Facebook::API.new(access_token)
        #   facebook.get_object("me?fields=id,name,birthday,hometown,location,photos,posts,friends,gender,age_range,email,link,favorite_athletes,favorite_teams")
        # end

end