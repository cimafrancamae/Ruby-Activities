require 'rspec'

class Transaction
  def initialize(quantity, price, discount=false)
    @quantity = quantity
    @price = price
    @discount = discount
  end

  # encapsulation
  # of computing the total
  def compute_total
    @quantity * @price
  end

  # abstraction
  # of total with discount
  def total_transaction
    total_price - get_discount
  end
  
  private

  def total_price
    @quantity * @price
  end

  
  def get_discount
    discount_price = @discount ? 0.10 : 0
    discount_price * total_price
  end
end

describe 'Transaction' do
  it 'computes the total' do
    transact = Transaction.new(5, 100, false)
    expect(transact.compute_total).to eq(500)
  end

  it 'computes the total with discount' do
    transact = Transaction.new(10, 899, true)
    # give 10% discount
    expect(transact.total_transaction).to eq(8091) 
  end
end