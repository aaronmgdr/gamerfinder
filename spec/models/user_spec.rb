require 'spec_helper'
require 'pry'




describe User do
  let(:person1) {User.create(:email=>"fofo@google.com", :password=>"password1")}
  let(:person2) {User.create(:email=>"fof@google.com", :password=>"password1")}
  let(:person3) {User.create(:email=>"fo@google.com", :password=>"password1")}
  let(:person4) {User.create(:email=>"f@google.com", :password=>"password1")}




  # describe "#answer_array_comparer" do
  #   it "should return a float score quantifying the percentage of User's answers that are in common with another User's answers" do
  #     allow(person1).to receive(:answers).and_return([2,4,9,11])
  #     allow(person2).to receive(:answers).and_return([2,5,7,10])

  #     expect(person1.answer_array_comparer(person2)).to eq(0.25)
  #   end
  # end


  describe '#compare_to_all' do
    it "returns users answers each questions as array" do
      # allow(person1).to receive(:answer_id).and_return([2, 4, 9, 11]) 


binding.pry
      person1.answers = [2,4,9,11]
      person2.answers = [2,5,7,10]
      person3.answers = [2,6,8,10]
      person4.answers = [1,4,9,11]

binding.pry
      expect(person1.compare_to_all).to eq([1.0,0.25,0.25,0.75])

    end
  end


end


