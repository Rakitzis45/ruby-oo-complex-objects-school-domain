class School
    attr_accessor :student, :roster


    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        roster[grade] ||= []
        roster[grade] << student
    end

    def grade(student_grade)
        roster[student_grade]
    end

    def sort
        sorted = {}
        roster.map{|grade, students| sorted[grade] = students.sort}
        sorted
    end
end