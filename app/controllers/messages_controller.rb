class MessagesController < InheritedResources::Base

	layout "swapper"

  def create
    create!(:notice => "You message has been sent") {new_message_path}
  end

  private

    def message_params
      params.require(:message).permit(:name, :email, :phone, :msg)
    end
end

