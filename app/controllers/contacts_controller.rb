class ContactsController < ApplicationController
  def index
    if current_user
      @contacts = current_user.contacts
      elsif !current_user
        @contacts = []
      else
        redirect_to '/login'
    end
    render 'index.html.erb' 
  end

  def new
    render 'new.html.erb'
  end

  def create
    contact = Contact.new(
      first_name: params[:first_name],
      middle_name: params[:middle_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      bio: params[:bio],
      user_id: current_user.id)
    contact.save
    redirect_to '/contacts'
  end

  def show
      @contact = Contact.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def edit
    @contact = Contact.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    @contact = Contact.find_by(id: params[:id])
    @contact.first_name = params[:first_name]
    @contact.middle_name = params[:middle_name]
    @contact.last_name = params[:last_name]
    @contact.email = params[:email]
    @contact.phone_number = params[:phone_number]
    @contact.bio = params[:bio]
    @contact.save
    redirect_to '/contacts/#{@contact.id}/show'
  end

  def destroy
    @contact = Contact.find_by(id: params[:id])
    @contact.destroy
    render 'destroy.html.erb'
  end
end
