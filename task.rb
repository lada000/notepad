class Task < Post
  def initialize
    super
    @due_data = Time.now
  end

  def read_from_console
    super
  end

  def to_strings
    super
  end
end