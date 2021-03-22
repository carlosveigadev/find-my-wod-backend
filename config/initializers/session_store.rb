if Rails.env == 'production'
  Rails.application.config.session_store :cookie_store, key: "_fmw_app", domain: "fmw-app-api.herokuapp.com"
else
  Rails.application.config.session_store :cookie_store, key: "_fmw_app"
end
