class MessagesController < ApplicationController

  before_filter :get_article

  def get_article
    @article=Article.find(params[:article_id])
  end

  def index
    @messages = @article.messages.scoped
    @message = Message.new
  end

  def show
    @message = @article.messages.find(params[:id])
  end

  def new
    @message = Message.new(:parent_id => params[:parent_id])
  end

  def create
    @message = @article.messages.new(params[:message])
    if @message.save
      redirect_to @article
    else
      render :new
    end
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    redirect_to @article
  end
end
