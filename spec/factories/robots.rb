FactoryBot.define do
  factory :robot do
    name 'Bob'
    serial { SecureRandom.hex }
    friendly true

    inventor
  end
end

# creates and saves
# how to call it into robot_spec
# FactoryBot.create(:robot)
# FactoryBot.create(:robot, friendly: false, name: 'Steve')

# creates a instance but not saves
# FactoryBot.build(:robot)

# will list out all the attributes that robot has
# FactoryBot.attributes_for(:robot)

# creates a default factory
# FactoryBot.build_stubbed(:robot)

# 
# FactoryBot.create(:robot) do |robot|
  # robot.parts(attributes_for(:parts))
# end

# Lazy Attributes
  # name { Robot.generate_name }

# Dependent Attributes (in order to work need what is in #{})
  # email { "#{first_name}@email.com" }

# Sequencing
  # sequence :email do |n|
    # "inventor#{n}@email.com"
  # end

# Multiple robots
  # will build but not save
  # build_list(:robot, 100)
  # will create and save
  # create_list(:robot, 100)

# callbacks
  # before(:build)
  # after(:build)
  # before(:create)
  # after(:create)
  # before(:stub)