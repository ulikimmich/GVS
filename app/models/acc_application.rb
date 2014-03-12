class AccApplication < ActiveRecord::Base
  belongs_to :user

  validates :appform_field_1, :appform_field_2, :appform_field_3, :appform_field_5,
            :appform_field_6, :appform_field_7, :appform_field_8, :appform_field_9, :appform_field_10,
            :appform_field_11, :appform_field_12, :appform_field_13, :appform_field_14, :appform_field_15,
            :appform_field_16, :appform_field_17, :appform_field_18,
            presence: true

  VALID_URL_REGEX = /(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?/ix
  validates :appform_field_4, presence:   true,
            format:     { with: VALID_URL_REGEX }

end
