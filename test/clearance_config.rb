HOST = "pillbox.dev"
DO_NOT_REPLY = "info@disruptiveventures.com"
ActionMailer::Base.default_url_options = { :host => 'pillbox.dev' }

class RackRailsCookieHeaderHack
  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, body = @app.call(env)
    if headers['Set-Cookie'] && headers['Set-Cookie'].respond_to?(:collect!)
      headers['Set-Cookie'].collect! { |h| h.strip }
    end
    [status, headers, body]
  end
end

config.after_initialize do
  ActionController::Dispatcher.middleware.insert_before(ActionController::Base.session_store, RackRailsCookieHeaderHack)
end

