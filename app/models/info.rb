class Info < ApplicationRecord
  validates :last_name, presence: true
  # before_validation :ensure_if_name_presence
  # before_create :ensure_if_lastname_presence
  # after_validation :check_after_validation
  # before_save :check_before_save
  # after_create :check_after_create
  # after_save :check_after_save
  # after_commit :check_after_commit
# def ensure_if_name_presence
#   if !name.present?
#     self.name = self.last_name #if !last_name.blank?
#   end
# end
# def ensure_if_lastname_presence
#   self.name = last_name.capitalize if name.blank?
# end
# def check_after_validation
#   if self.last_name.present?
#     puts "Last name is not present"
#   end
# end
# def check_before_save
#   self.name = name.capitalize
# end
# def check_after_create
#   self.last_name = last_name.capitalize
# end
# def check_after_save
#   puts "Created"
# end
# def check_after_commit
#   puts "After the commit"
# end
# before_save :normalize_card_number, if: :paid_with_card?
# def paid_with_card?
#   if self.name.present?
#     true
#   end
# end
# def normalize_card_number
#   self.name = name.capitalize
# end
# before_update :check_if_name_present?
after_update :check_after_update
# def check_if_name_present?
#   if !name.present?
#     self.name = self.last_name
#   end
# end
def check_after_update
  if !name.present?
    self.name = self.last_name
  end
end
end