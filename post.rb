class Post
  def initialize
    @create_at = Time.now
    @text = nil
  end

  def read_from_console

  end

  def to_strings

  end

  def save
    file = File.new(file_path, 'w:UFT-8')

    for item in to_strings do
      file.puts(item)
    end

    file.close
  end

  def file_path
    current_rath = File.dirname(__FILE__ )
    file_name = @create_at.strftime("#{self.class.name}_@Y-@m-@d_@H-@M-@S.txt")
    return current_rath + '/' + file_name
  end
end