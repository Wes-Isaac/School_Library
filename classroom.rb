require_relative './student'

class Classroom
  att_accessor :label
  attr_reader :students

  def initialize(label)
     @label = label
     @students = []
  end

  def add_students(student)
    @students.push(student)
    studetn.classroom = self
  end
end
