class FaqsController < InheritedResources::Base

  layout "swapper"

  def new
  	redirect_to admin_faqs_path  	
  end

  def show
  	redirect_to admin_faqs_path
  end

  def edit
  	redirect_to admin_faqs_path
  end

  private

    def faq_params
      params.require(:faq).permit(:question, :answer)
    end
end

