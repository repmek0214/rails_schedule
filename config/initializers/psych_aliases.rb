# config/initializers/psych_aliases.rb
require 'psych'

module Psych
  class << self
    alias_method :old_load, :load
    alias_method :old_safe_load, :safe_load

    def load(yaml, *args)
      old_load(yaml, *args, aliases: true)
    end

    def safe_load(yaml, *args, **kwargs)
      old_safe_load(yaml, *args, **kwargs.merge(aliases: true))
    end
  end
end

