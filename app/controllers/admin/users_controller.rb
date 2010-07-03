class Admin::UsersController < ApplicationController

  before_filter :admin_only

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end
  
  def create 
    @user = User.new(params[:user])
    respond_to do |format|
      if @user.save
        flash[:msg] = "User created."
        format.html do
          redirect_to admin_user_path(@user)
        end
      else
        format.html do
          render :action => :new
        end
      end
    end
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if params[:user_admin] and params[:user_admin] == 1
      @user.activate_admin!
    else
      @user.deactivate_admin!
    end
    respond_to do |format|
      if @user.update_attributes(params[:user])
        flash[:msg] = "User #{@user.email} was successfully updated."
        format.html do
          redirect_to admin_users_path
        end
      else
        format.html do
          render :action => :edit
        end
      end
    end
  end
  
  def activate_admin
    @user = User.find(params[:id])
    respond_to do |format|
      if @user.activate_admin!
        flash[:msg] = "User #{@user.email} was promoted to Admin."
        format.html do
          redirect_to edit_admin_user_path(@user)
        end
      else
        format.html do
          flash[:msg] = "User #{@user.email} could not be promoted to Admin."
          render :action => :edit
        end
      end
    end
  end
  
  def deactivate_admin
    @user = User.find(params[:id])
    respond_to do |format|
      if @user.deactivate_admin!
        flash[:msg] = "User #{@user.email} was demoted from Admin."
        format.html do
          redirect_to edit_admin_user_path(@user)
        end
      else
        format.html do
          flash[:msg] = "User #{@user.email} could not be demoted from Admin."
          render :action => :edit
        end
      end
    end
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def destroy
    @user = User.find(params[:id])
    respond_to do |format|
      if current_user.id != @user.id && @user.destroy
        flash[:msg] = "User deleted."
      else
        flash[:msg] = "User could not be deleted."
      end
      format.html do
        redirect_to admin_users_path
      end
    end
  end

end
