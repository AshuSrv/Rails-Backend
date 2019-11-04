class RegisterController < ApplicationController  
    def create
        getUser = User.find_by(uid: params['uid'])
        if (getUser == nil) 
            getUser = User.new
            getUser.uid = params['uid']
        end
        getUser.username = params['username']
        getUser.accessToken = params['accessToken']
        getUser.pic_url = params['pic_url']
        getUser.email = params['email']
        getUser.provider = params['provider']
        getUser.secret = params['secret']
        getUser.save
        render json: {
            status: 'ok',
            user: getUser
        }
       
    end

    def login
        @user = User.koala(request.env['omniauth.auth']['credentials'])
        #redirect_to('http://localhost:3001/xyz') and return
        render json:{
            Friend_count:@user['friends']['summary']['total_count'],
            user:@user['photos']['data'][0]['created_time']
        }
      end


end