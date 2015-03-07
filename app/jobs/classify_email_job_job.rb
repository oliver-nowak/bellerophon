class ClassifyEmailJobJob < ActiveJob::Base
  queue_as :default

  def perform(record)
    cmd = 'python ./lib/tasks/classify.py'
    is_spam = false

    result, err, s= Open3.capture3(cmd, stdin_data: record.document)

    if result.include? 'spam'
      is_spam = true
    end

    record.update(is_spam: is_spam)

  end
end
