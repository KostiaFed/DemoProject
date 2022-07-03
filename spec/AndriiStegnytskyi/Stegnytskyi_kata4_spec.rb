require './katas/AndriiStegnytskyi/Stegnytskyi_kata4.rb'

describe "#queue_time" do

  input_no_people = [[[], 1],
                     [[], 5],
                     [[], 10],
                     [[], 123],
                     [[], 22]]
  output_no_people = [0]

  input_one_person = [[[3], 1],
                      [[2], 1],
                      [[6], 1],
                      [[10], 1],
                      [[22], 1]]
  output_one_person = [3, 2, 6, 10, 22]

  input_one_person_many_tills = [[[3], 2],
                                 [[2], 5],
                                 [[6], 2],
                                 [[10], 12],
                                 [[22], 222]]
  output_one_person_many_tills = [3, 2, 6, 10, 22]

  input_one_till_many_people =  [[[1, 2, 3, 4, 5], 1],
                                 [[5, 3, 6, 4], 1],
                                 [[10, 1, 10, 1], 1],
                                 [[5, 5], 1],
                                 [[3, 2, 1], 1]]
  output_one_till_many_people = [15, 18, 22, 10, 6]

  input_many_people_many_tills = [[[1, 2, 3, 4, 5], 2],
                                 [[5, 3, 6, 4, 7, 2], 2],
                                 [[10, 3, 5, 7, 2, 3], 3]]
  output_many_people_many_tills = [9, 16, 10]

  input_incorrect_tills = [[[1, 2, 3, 4, 5], 0],
                           [[5, 3, 6, 4, 7, 2], 0],
                           [[10, 3, 5, 7, 2, 3], -2]]
  output_incorrect_tills = ['Supermarket is closed']


  context 'when no people are in the queue' do
    input_no_people.zip(output_no_people).each do |input, output|
      it { expect(queue_time(input[0], input[1])).to eql(0) }
    end
  end

  context 'when there is one person' do
    input_one_person.zip(output_one_person).each do |input, output|
      it { expect(queue_time(input[0], input[1])).to eql(output) }
    end
  end

  context 'when there is one person and many tills' do
    input_one_person_many_tills.zip(output_one_person_many_tills).each do |input, output|
      it { expect(queue_time(input[0], input[1])).to eql(output) }
    end
  end

  context 'when there are many people and one till' do
    input_one_till_many_people.zip(output_one_till_many_people).each do |input, output|
      it { expect(queue_time(input[0], input[1])).to eql(output) }
    end
  end

  context 'when there are many people and many tills' do
    input_many_people_many_tills.zip(output_many_people_many_tills).each do |input, output|
      it { expect(queue_time(input[0], input[1])).to eql(output) }
    end
  end

  context 'when there is incorrect number of tills' do
    input_incorrect_tills.zip(output_incorrect_tills).each do |input, output|
      it { expect(queue_time(input[0], input[1])).to eql('Supermarket is closed') }
    end
  end
end
