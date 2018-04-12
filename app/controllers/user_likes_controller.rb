class UserLikesController < ApplicationController
  def index
    @q = UserLike.ransack(params[:q])
    @user_likes = @q.result(:distinct => true).includes(:venue, :dish).page(params[:page]).per(10)

    render("user_likes/index.html.erb")
  end

  def show
    @user_like = UserLike.find(params[:id])

    render("user_likes/show.html.erb")
  end

  def new
    @user_like = UserLike.new

    render("user_likes/new.html.erb")
  end

  def create
    @user_like = UserLike.new

    @user_like.venue_id = params[:venue_id]
    @user_like.dish_id = params[:dish_id]

    save_status = @user_like.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/user_likes/new", "/create_user_like"
        redirect_to("/user_likes")
      else
        redirect_back(:fallback_location => "/", :notice => "User like created successfully.")
      end
    else
      render("user_likes/new.html.erb")
    end
  end

  def edit
    @user_like = UserLike.find(params[:id])

    render("user_likes/edit.html.erb")
  end

  def update
    @user_like = UserLike.find(params[:id])

    @user_like.venue_id = params[:venue_id]
    @user_like.dish_id = params[:dish_id]

    save_status = @user_like.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/user_likes/#{@user_like.id}/edit", "/update_user_like"
        redirect_to("/user_likes/#{@user_like.id}", :notice => "User like updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "User like updated successfully.")
      end
    else
      render("user_likes/edit.html.erb")
    end
  end

  def destroy
    @user_like = UserLike.find(params[:id])

    @user_like.destroy

    if URI(request.referer).path == "/user_likes/#{@user_like.id}"
      redirect_to("/", :notice => "User like deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "User like deleted.")
    end
  end
end
