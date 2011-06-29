# coding: utf-8

class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params[:article])
    unless @article.save
      return  render :new, :alert => 'failed to create new article.'
    end
    redirect_to article_path(@article)
  end
end
