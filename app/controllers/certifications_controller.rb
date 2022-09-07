require "open-uri"

class CertificationsController < ApplicationController
  def create
    @user = current_user
    @certification = Certification.new(user_id: @user.id, description: "Certificat délivré par Academint pour le cours
                                       Apprendre à coder en Ruby (1ère partie)", name: "Apprendre à coder en
                                       Ruby (1ère partie)")
    certif_img = URI.open("https://res.cloudinary.com/dunslpwim/image/upload/v1662548352/NFT_Academint_pkxif7.svg")
    @certification.photo.attach(io: certif_img, filename: 'certif_img', content_type: "image/jpg")
    @certification.save!
    authorize @certification
  end
end
