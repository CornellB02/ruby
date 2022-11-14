class Bootcamp
  def initialize(name, slogan, student_capacity)
    @name = name 
    @slogan = slogan
    @student_capacity = student_capacity
    @teachers = []
    @students = []
    @grades = Hash.new { |h,k| h[k] = [] } 
  end
  def name 
    @name 
end
    def slogan 
    @slogan 
    end

    def student_capacity 
    @student_capacity 
    end

  def teachers
    return @teachers
  end

  def students
    return @students
  end

  def hire(string)
    @teachers.push(string)
  end

  def enroll(student)
    if students.length < @student_capacity
      @students << student
      return true
    else
      return false
    end
  end

  def enrolled?(student)
    @students.include?(student)
  end

  def student_to_teacher_ratio
    @students.length / @teachers.length
  end

  def add_grade(student, grade)
    if self.enrolled?(student)
      @grades[student] << grade
      return true
    else
      return false
    end
  end

  def num_grades(student)
    @grades[student].length
  end

  def average_grade(student)
    if !self.enrolled?(student) || num_grades(student).zero?
      return nil 
    end
    @grades[student].sum / self.num_grades(student)
  end
end
