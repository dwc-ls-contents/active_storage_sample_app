class Message < ApplicationRecord
  has_many_attached :images
  
  
  # 検証用
  # validate :validate_images
  # 
  # def validate_images
  #   errors.add(:images, "test error")
  # end
  
  
  # has_many_attachedに対してブロックを渡し、variantの設定をしておくことも可能
  #
  # has_many_attached :images do |attachable|
  #   attachable.variant :thumb, resize_to_limit: [100, 100]
  # end

  
  # validationはactive storage validationsを使うか、カスタムバリデーションを書くことができます。
  # 
  # Active Storage Validation (https://github.com/igorkasyanchuk/active_storage_validations)
  # validates :images, attached: true, content_type: ['image/png', 'image/jpeg'],
  # 
  # カスタムバリデーション
  # validate :validate_images
  # 
  # def validate_images
  #   images.each do |image|
  #     unless image.content_type.in?(%w[image/png image/jpeg])
  #       errors.add(:images, "はPNG, JPEG形式のみ有効です。")
  #     end
  #   end
  # end
  
  
end
