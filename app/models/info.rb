class Info < ApplicationRecord
#   validates :last_name, presence: true
#   # before_validation :ensure_if_name_presence
#   # before_create :ensure_if_lastname_presence
#   # after_validation :check_after_validation
#   # before_save :check_before_save
#   after_create :check_after_create
#   # after_save :check_after_save
#   # after_commit :check_after_commit
# # def ensure_if_name_presence
# #   if !name.present?
# #     self.name = self.last_name #if !last_name.blank?
# #   end
# # end
# # def ensure_if_lastname_presence
# #   self.name = last_name.capitalize if name.blank?
# # end
# # def check_after_validation
# #   if self.last_name.present?
# #     puts "Last name is not present"
# #   end
# # end
# # def check_before_save
# #   self.name = name.capitalize
# # end
# # def check_after_create
# #   self.last_name = last_name.capitalize
# # end
# # def check_after_save
# #   puts "Created"
# # end
# # def check_after_commit
# #   puts "After the commit"
# # end
# # before_save :normalize_card_number, if: :paid_with_card?
# # def paid_with_card?
# #   if self.name.present?
# #     true
# #   end
# # end
# # def normalize_card_number
# #   self.name = name.capitalize
# # end
# # before_update :check_if_name_present?
# # before_update :check_after_update
# # byebug
# # def check_if_name_present?
# #   if !name.present?
# #     self.name = self.last_name
# #   end
# # end
# def check_after_update
#   if !name.present?
#     self.name = self.last_name
#   end
# end






 # validates :email, presence: true, on: :update
 # before_validation :check_before_validation
 # after_validation :check_after_validation
 # def check_before_validation
  # byebug
   # self.name = name.capitalize
 # end
 # def check_after_validation
 #   self.name = name.capitalize
 # end

 # before_create :check_before_create
 # before_save :check_before_save
# after_create :check_after_create
   # byebug

  # def check_before_create
    # if !self.name.present?
    #   self.name = login.upcase
    # end
    # puts "Before Create"
  # end
  # def check_before_save
    # if self.name.blank?
      # self.name = login.upcase
    # end
  # end
  # def check_after_create
  #   if email.present? && !login.present?
  #     self.login = self.email
  #     puts "after Create"
  #   end
  # end

  # after_commit :check_after_commit
  # def check_after_commit
  #   puts "Send email after commit to user"
  # end
  # after_rollback :check_after_rollback
  # def check_after_rollback
  #   puts "Your Trancsaction is chenaged"
  # end

  # before_update :check_before_update
  # def check_before_update
  #   # if !name.present? 
  #   #   self.name = self.login if login.present?
  #   # end
  #   puts "Your Record is going to update"
  # end
  # before_destroy :check_before_destroy
  # def check_before_destroy
  #   puts "Id is present" if id.present?
  # end
  # after_destroy :check_after_destroy
  # def check_after_destroy
  #   if name.present?
  #     puts "Name is present"
  #   end
  # end
  # around_save :check_around_save
  # def check_around_save
  #   puts 'in around save'
  #   yield # User saved
  #   puts 'out around save'
  # end
  # around_destroy :check_around_destroy
  # def check_around_destroy
  #   puts 'in around destroy'
  #   yield # User destroyed
  #   puts 'out around destroy' 
  # end

  # after_initialize do |user|
  #   puts "You have initialized an object!"
  # end

  # after_find do |user|
  #   puts "You have found an object!"
  # end
  # after_touch do |user|
  #   puts "You have touched an object"
  # end
  # before_save :normalize_name, if: :if_name_present?
  # def if_name_present?
  #   if self.name.present?
  #     true
  #   end
  # end
  # def normalize_name
  #   self.name = name.capitalize
  # end
  # before_save :normalize_name,
  #   if: Proc.new { |order| order.if_name_present? }
  # def if_name_present?
  #   if self.name.present?
  #     true
  #   end
  # end   
  # def normalize_name
  #   self.name = name.capitalize
  # end 

  # before_save :last_name_present,
  #   if: Proc.new { email_control? },
  #   unless: Proc.new { name.valid? }
  # def email_control?
  #   if !email.present?
  #     self.email = login
  #   end
  # end
  # def name.valid?
  #   true
  # end
  # def last_name_present
  #   if last_name.present?
  #     true  
  #   end
  # end

  # before_save :last_name_present,
  #   if: [:email_control?, :name.present?]
  # def email_control?
  #   if !email.present?
  #     self.email = login
  #   end
  # end
  # def name.present?
  #   true
  # end
  # def last_name_present
  #   if last_name.present?
  #     true  
  #   end
  # end

  # after_create_commit :check_after_create_commit
  # def check_after_create_commit
  #   puts "Create commit"
  # end
  # after_update_commit :check_after_commit_destroy
  # def check_after_commit
  #   puts "Updated"
  # end
  # after_destroy_commit :check_after_commit_destroy
  # def check_after_commit_destroy
  #   puts "Destroy"
  # end




  validates :name, presence: true
  # before_create :check_before_create
  # after_create :check_after_create
  after_commit :demo
  # after_validation :remove_whitespaces
  def demo
    byebug
    self.name = "_" + self.name
    # byebug
    # self.save
  end
  # def check_after_create
  #   # byebug
  #   self.name = "pre_" + self.name
  #   # self.save
  #   # byebug
  # end

  # def remove_whitespaces
  #   # byebug
  #   return true
  # end

  # def check_before_save
  #   byebug
  #   if !name.present?
  #     self.name = self.last_name
  #   end
  # # end
  # after_save :check_after_save
  # def check_after_save
  #   byebug
  #   if !name.present?
  #     self.name = self.last_name
  #   end
  # end
end


