require './katas/OlexiySivachenko/Sivachenko_kata2.rb'

test = Struct.new(:input, :want)

describe '#duty_free' do

  context 'when passed wrong parametrs' do
    it 'returs error' do
      tests = [
          test.new(['thcw', 10.6, false], NoMethodError),
          test.new([12.2, {}, 'dmbcy'], NoMethodError),]
      tests.each do |t| 
      expect{duty_free(*t.input)}.to raise_error(t.want)
      end
    end  
  end

  context 'when passed parametrs have special value' do
    it 'returns error if discount 0' do
      expect{duty_free(17, 0, 500)}.to raise_error(FloatDomainError)
    end

    it 'returns error if price 0' do
      expect{duty_free(0, 10, 500)}.to raise_error(FloatDomainError)
    end

    it 'returns error if cost 0' do
      expect(duty_free( 500, 10, 0)).to eql(0)
    end
  end

  context 'when passed parametrs are integer, float, or number in string' do
    it 'returns integer type of result' do
      tests = [
          test.new(['17.3', 10.6, '500.9'], Integer),
          test.new([12.2, '50.1', '1000.7'], Integer),
          test.new([10.2, '10', 500.7], Integer),]
      tests.each do |t| 
      expect(duty_free(*t.input)).to be_instance_of(t.want)
      end
    end 

    it 'returns correct number of bottles' do
      tests = [
          test.new(['10.3', 10.6, '500'], 500),
          test.new([12.2, '50.1', '1000.7'], 166),
          test.new([12.1, 70.4, 1000], 119),
          test.new([17.4, 10.2, 500], 294),
          test.new([170.4, 10.2, 17], 1),]
      tests.each do |t| 
      expect(duty_free(*t.input)).to eql(t.want)
      end
    end  
  end
end