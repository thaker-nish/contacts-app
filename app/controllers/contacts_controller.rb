class ContactsController < ApplicationController
 
  def contacts_method
    @contact1 = Contact.first
    @contact1_name = @contact1.first_name + ' ' + @contact1.last_name
    @contact1_email = @contact1.email
    @contact1_phone_number = @contact1.phone_number
    @contact2 = Contact.second
    @contact2_name = @contact2.first_name + ' ' + @contact1.last_name
    @contact2_email = @contact2.email
    @contact2_phone_number = @contact2.phone_number
    @contact3 = Contact.last
    @contact3_name = @contact3.first_name + ' ' + @contact1.last_name
    @contact3_email = @contact3.email
    @contact3_phone_number = @contact3.phone_number
    render 'contacts.html.erb'
  end

  def contact1_method
    @contact1 = Contact.first
    @contact1_name = @contact1.first_name + ' ' + @contact1.last_name
    @contact1_email = @contact1.email
    @contact1_phone_number = @contact1.phone_number
    render 'contact1.html.erb'
  end

  def contact2_method
    @contact2 = Contact.second
    @contact2_name = @contact2.first_name + ' ' + @contact2.last_name
    @contact2_email = @contact2.email
    @contact2_phone_number = @contact2.phone_number
    render 'contact2.html.erb'
  end

  def contact3_method
    @contact3 = Contact.last
    @contact3_name = @contact3.first_name + ' ' + @contact3.last_name
    @contact3_email = @contact3.email
    @contact3_phone_number = @contact3.phone_number
    render 'contact3.html.erb'
  end
end
