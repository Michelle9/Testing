class StaticPagesController < ApplicationController
   
   def home
      if signed_in?
         @micropost  = current_user.microposts.build
         @feed_items = current_user.feed.paginate(page: params[:page])
    end
   end

   def help 
   end

   def about
   end

   def contact
   end
   
   def mission
   end
   
   def guide
   end
   
   def map
   end
   
   def shops
   end
   
   def oblivion
   end
   
   def news
   end

end
