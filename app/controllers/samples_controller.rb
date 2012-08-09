class SamplesController < InheritedResources::Base
  def index
    @samples = Sample.page params[:page]
  end
end
