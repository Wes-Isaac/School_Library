require_relative './corrector'
require_relative './rental'

class Person
  attr_accessor :name, :age, :rental
  attr_reader :id

  def initialize(age, name = 'unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @corrector = Corrector.new
    @rental = []
  end

  def validate_name
    @name = @corrector.correct_name(name)
  end

  def add_rental(book, date)
    Rental.new(book, date, self)
  end

  private

  def of_age?
    @age >= 18
  end

  public

  def can_use_services?
    of_age? || parent_permission
  end
end

person = Person.new(100, 'isaacnewton')
person.validate_name

puts person.name
