require 'rspec'
require './lib/student'

# Add the 2 requires you will need here
RSpec.describe Student do
  describe '#initialize' do
    it 'exists' do
      # what we think will happen
      #condition to be fulfilled
       student = Student.new('Penelope')

       expect(student).to be_instance_of Student
    end
    it 'has attributes' do
      student = Student.new('Penelope')
      expect(student.name).to eq('Penelope')
      expect(student.cookies).to eq([])
    end
  end
  describe '#add_cookie' do
    it 'can add cookies' do
      student = Student.new('Penelope')
      expect(student.cookies).to eq([])

      student.add_cookie('Chocolate Chip')
      expect(student.cookies).to eq(['Chocolate Chip'])
    end
 end
end
      # write the code to initialize a new student object

    # test it has a name
    # test it has cookies
    # test it can add cookies
