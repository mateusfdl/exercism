class LogLineParser
  LOG_LEVEL_PATTERN = {
    '[ERROR]' => :error,
    '[WARNING]' => :warning,
    '[INFO]' => :info
  }
  def initialize(line)
    @line = line

    @log_level, @message = split_message
  end

  def split_message
    @line.split(':')
  end

  def message
    @message.split.join(' ')
  end

  def log_level
    LOG_LEVEL_PATTERN[@log_level].to_s
  end

  def reformat
    message + " (#{log_level})"
  end
end
