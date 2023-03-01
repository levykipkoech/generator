class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'
    get '/memes' do
        memes = Meme.all
        { memes: memes }.to_json
      end
      

      get '/memes/user/:user_id' do
        user = User.find(params[:user_id])
        memes = user.memes
        { memes: memes }.to_json
      end

      post '/memes' do
        user = User.find(params[:user_id])
        meme = Meme.new(title: params[:title], url: params[:url], user_id: user.id)
        if meme.save
          status 201
          { message: "Meme created successfully" }.to_json
        else
          status 400
          { errors: meme.errors.full_messages }.to_json
        end
      end

      get '/memes/search' do
        if params[:title]
          memes = Meme.where('title LIKE ?', "%#{params[:title]}%")
        elsif params[:date_published]
          memes = Meme.where(date_published: params[:date_published])
        end
        { memes: memes }.to_json
      end

      patch '/memes/:id' do
        meme = Meme.find(params[:id])
        if meme.user_id == params[:user_id].to_i
          meme.update(title: params[:title], url: params[:url])
          status 200
          { message: "Meme updated successfully" }.to_json
        else
          status 401
          { message: "You are not authorized to update this meme" }.to_json
        end
      end

      delete '/memes/:id' do
        meme = Meme.find(params[:id])
        if meme.user_id == params[:user_id].to_i
          meme.destroy
          status 200
          { message: "Meme deleted successfully" }.to_json
        else
          status 401
          { message: "You are not authorized to delete this meme" }.to_json
        end
      end
      
      
      
end

# ki
 