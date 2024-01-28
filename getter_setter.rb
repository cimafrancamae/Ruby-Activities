require 'rspec'

class Profile
  attr_accessor :full_name, :age, :address, :work
  
  def initialize(full_name, age, address, work)
    # code here
    @full_name = full_name
    @age = age
    @address = address
    @work = work
  end
end

my_profile = Profile.new('Juan', 18, 'Bulacan', 'Instructor')
puts my_profile.full_name
puts my_profile.age
puts my_profile.work

puts "\n"

my_profile.age = 25
my_profile.work = 'Software Engineer'

puts my_profile.age
puts my_profile.work


describe 'Profile' do
  it 'has getters and setters' do
    my_profile = Profile.new('Juan', 18, 'Bulacan', 'Instructor')

    expect(my_profile.full_name).to eq('Juan')

    my_profile.full_name = 'Juan Cruz'

    expect(my_profile.full_name).to eq('Juan Cruz')
    
    my_profile.age = 25
    my_profile.work = 'Software Engineer'

    expect(my_profile.age).to eq(25)
    expect(my_profile.work).to eq('Software Engineer')
  end
end


#Activity 3
puts '-' * 50

class Country
  attr_reader :continent, :language
  
  def initialize(continent,language)
    @continent = continent
    @language = language
  end
end

philippines = Country.new('Asia','Filipino')
germany = Country.new('Europe','German')

puts 'Philippines'
puts philippines.continent
puts philippines.language

puts "\n"

puts 'Germany'
puts germany.continent
puts germany.language
