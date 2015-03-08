require 'open3'

class ClassifyEmailJob < ActiveJob::Base
  queue_as :default

  rescue_from(ActiveRecord::RecordNotFound) do |exception|
    logger.error "Record not found: " + exception.to_s
  end

  def perform(record_id)
    record = Message.find(record_id)
    cmd = 'python ./lib/tasks/classify.py'
    is_spam = false

    result, err, s= Open3.capture3(cmd, stdin_data: record.document)

    if result.include? 'spam'
      is_spam = true
    end

    record.update(is_spam: is_spam)
  end
end
