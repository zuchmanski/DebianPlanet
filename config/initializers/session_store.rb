# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_DebianPlanet_session',
  :secret      => '7832bc50c725727af2f8994cd17ee8fb724a57195540c833054b174c9f16cf818898f23e60d65b2ad1e06e746a2ac5f45bbe8e271071e43ffe499810b7acc5fa'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
