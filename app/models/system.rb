class System < ActiveRecord::Base
  attr_accessible :content

  belongs_to :user  # pour attacher a la table user!

  default_scope :order => 'systems.created_at DESC' #pour mettre a l ordre chronologique de bas en haut

  validates :content, :presence => true, :length => { :maximum => 140 }
  validates :user_id, :presence => true

end
