require relative 'person'

class Student < Person
  def initialize(classroom, age, parent_permission: true, name = 'Unknown')
    super(age, name, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end

end
