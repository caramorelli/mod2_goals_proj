# README

## BCrypt Hints

* **Use BCrypt**. You must not store passwords in the DB.
* `BCrypt::Password.create(password)` digests a password and builds a
  `Password` object.
* `BCrypt::Password.new(digest)` builds a `Password` object for the
  digest.
* `BCrypt::Password#is_password?(password)` checks if a password
  matches a digest.
