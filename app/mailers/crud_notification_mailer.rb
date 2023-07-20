class CrudNotificationMailer < ApplicationMailer

  def create_notification(user)
    # @post=params[:post]
    # @user=params[:user]
    # byebug

    @user=user
    @user_count=User.count
    # # byebug
    # mail(from:User.first.email,to:User.last.email,subject:"Hello")
    # byebug
    attachments.inline['pics.jpg']=File.read('app/assets/images/pics.jpg')
    mail(from:email_address_with_name(User.first.email,User.first.name),to: email_address_with_name(user[:email],user[:name]),cc: User.all.pluck(:email), subject: "A new entry for #{user.class} has been created")
  end


  def update_notification(object)
    @object=object
    @object_count=object.class.count

    mail to:'admin@example.com', subject: "An entry for #{object.class} has been updated"


  end


  def delete_notification(object)
    @object=object
    @object_count=object.class.count

    mail to:'admin@example.com', subject: "An entry for #{object.class} has been deleted"

  end

end

