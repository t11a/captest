# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_captest_session',
  :secret      => '114d969b87c1ad5e4e410667b552b127c248bc59b2040bade993a0f047de73f3e5ce1dd6b926a45af6da59f2d85450bfeba16c5195d62ced407221f56bc875aa'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
