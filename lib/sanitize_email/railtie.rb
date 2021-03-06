# Copyright (c) 2008-15 Peter H. Boling of RailsBling.com
# Released under the MIT license

module SanitizeEmail
# For Rails 3.0, which didn't yet support Engines
  class Railtie < ::Rails::Railtie

    config.after_initialize do
      ActionMailer::Base.register_interceptor(SanitizeEmail::Bleach.new)
    end

  end
end
