class ClassifiesController < ApplicationController
  def index
    @sorted_classifies = A::Classify.sorted_classifies
  end
end
