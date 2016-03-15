class PrestataireService < ActiveRecord::Base
  belongs_to :prestataire
  belongs_to :service
end
