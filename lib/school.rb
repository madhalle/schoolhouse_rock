class School
  attr_reader :start_time, :hours_in_school_day, :student_names
  def initialize(zebra, chocolate)
    @start_time = zebra
    @hours_in_school_day = chocolate
    @student_names = []
    # @schools_rank = 10
  end

  def add_student_name(name_string)
    @student_names << name_string
  end

  def end_time
    (@start_time.to_i + @hours_in_school_day).to_s + ":00"
  end

  def is_full_time?
    @hours_in_school_day > 4
  end

  def standard_student_names
    @student_names.map do |name|
      name.capitalize
    end
  end
end
