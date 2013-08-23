require "humanized_full_messages/version"
require "humanized_full_messages/hash"

module HumanizedFullMessages
  def humanized_full_messages key=nil
    messages.rekey!(ERRORS_MAPPING[key])
    full_messages
  end
end

ActiveModel::Errors.send(:include, HumanizedFullMessages)
