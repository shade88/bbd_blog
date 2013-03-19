class BlogMessagesController < ApplicationController
  # GET /posts
  # GET /posts.json
  def index
    @blog_messages = BlogMessage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @blog_messages }
    end
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @blog_message = BlogMessage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @blog_message }
    end
  end

  # GET /posts/new
  # GET /posts/new.json
  def new
    if       params[:id]
      user=User.find(params[:user_id])
      @blog_message = user.blog_messages.build
    else
      @blog_message = BlogMessage.new
    end

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @blog_message }
    end
  end

  # GET /posts/1/edit
  def edit
    @blog_message = BlogMessage.find(params[:id])
  end

  # POST /posts
  # POST /posts.json
  def create
    @blog_message = BlogMessage.new(params[:blog_message])

    respond_to do |format|
      if @blog_message.save
        format.html { redirect_to @blog_message, notice: 'Post was successfully created.' }
        format.json { render json: @blog_message, status: :created, location: @blog_message }
      else
        format.html { render action: "new" }
        format.json { render json: @blog_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /posts/1
  # PUT /posts/1.json
  def update
    @blog_message = BlogMessage.find(params[:id])

    respond_to do |format|
      if @blog_message.update_attributes(params[:blog_message])
        format.html { redirect_to @blog_message, notice: 'Post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @blog_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @blog_message = BlogMessage.find(params[:id])
    @blog_message.destroy

    respond_to do |format|
      format.html { redirect_to posts_url }
      format.json { head :no_content }
    end
  end
end
