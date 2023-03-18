class MovieSummarySerializer < ActiveModel::Serializer
  attributes :summary

  def summary
    "#{object.title} - (#{object.description}[0..30])"
  end
end
