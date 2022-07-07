require './katas/RomanKorkonishko/Korkonishko_kata4.rb'

describe '#balance' do
  input = <<~RUBY.strip
    1000.00
    125 Market 125.45
    126 Hardware 34.95
    127 Video 7.45
    128 Book 14.32
    129 Gasoline 16.10
  RUBY

  output = <<~RUBY.strip
    Original Balance: 1000.00\r
    125 Market 125.45 Balance 874.55\r
    126 Hardware 34.95 Balance 839.60\r
    127 Video 7.45 Balance 832.15\r
    128 Book 14.32 Balance 817.83\r
    129 Gasoline 16.10 Balance 801.73\r
    Total expense  198.27\r
    Average expense  39.65
  RUBY

  it 'returns a report as a string' do
    expect(balance(input)).to be_a(String)
  end

  it 'returns a report which in the first line has the new balance and in the last two lines the total expense and the average expense' do
    expect(balance(input)).to eq(output)
  end

  it 'returns in the first line the "Original Balance:" expression' do
    expect(balance(input)).to start_with('Original Balance:')
  end

  it 'returns in the second last line the "Total expense" expression' do
    intput_splitted = balance(input).split("\r\n")
    expect(intput_splitted[-2]).to start_with('Total expense')
  end

  it 'returns in the last line the "Average expense" expression' do
    intput_splitted = balance(input).split("\r\n")
    expect(intput_splitted.last).to start_with('Average expense')
  end

  it 'returns original balance as a float with two digits after the point' do
    intput_splitted = balance(input).split("\r\n")
    balance_number_digits_after_point = intput_splitted.first
                                                       .split(' ')
                                                       .last
                                                       .split('.')
                                                       .last
                                                       .size
    expect(balance_number_digits_after_point).to eq(2)
  end

  it 'returns total expense as a float with two digits after the point' do
    intput_splitted = balance(input).split("\r\n")
    balance_number_digits_after_point = intput_splitted[-2]
                                          .split(' ')
                                          .last
                                          .split('.')
                                          .last
                                          .size
    expect(balance_number_digits_after_point).to eq(2)
  end

  it 'returns average expense as a float with two digits after the point' do
    intput_splitted = balance(input).split("\r\n")
    balance_number_digits_after_point = intput_splitted.last
                                                       .split(' ')
                                                       .last
                                                       .split('.')
                                                       .last
                                                       .size
    expect(balance_number_digits_after_point).to eq(2)
  end
end