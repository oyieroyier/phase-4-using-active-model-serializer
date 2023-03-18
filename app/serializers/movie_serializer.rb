class MovieSerializer < ActiveModel::Serializer
  attributes :id,
             :title,
             :year,
             :length,
             :director,
             :category,
             :discount,
             :female_director,
             :summary

  def summary
    "#{object.title} - #{object.description[0..49]}..."
  end
end
