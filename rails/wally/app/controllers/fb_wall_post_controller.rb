class FbWallPostController < ApplicationController


  def post_att(message, attachment)

    access_token = 'EAAYFd0ELQO4BAPIAzdZB0SzuSeeAtaBP2yRSeKFokRtES3ZBz7Qr8f9ESP7whT3ZBwO3v3Xiq2emRcye41OhIUgpKetJ8XDIZCZAdoQDaDUkPKgkwONYuZCKlYWuNPqBALYgbNMBZCKMwuBNy4ksDXfu40gWBPfzCjOQd0EFi1TcQ****'
    app_secret = 'a86431a4660b427582c5ce0e119c****'

  @graph = Koala::Facebook::API.new(access_token, app_secret)
  @graph.put_wall_post(message, attachment)

  end

  def post
    access_token = 'EAAYFd0ELQO4BAEpFjZBhr0t0d3UyPIWR7UxeKRVOaZBNDFBT1S0ZCgA5vHXQnZAJJrCVEx7WFcjgA7n4vyAnmXQsuGnIkxqHD4X5g2JcTbp5g2NFfKZBB5wfEUCv3W5d1YpAop0lOYM4FlNvif2S8ltr2bdFWvR3VCGDh9SZB6hQ****'
    app_secret = 'a86431a4660b427582c5ce0e119c****'

    @graph = Koala::Facebook::API.new(access_token, app_secret)
    @graph.put_wall_post('hola2')

  end


end
