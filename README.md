# README

## Local Setup

1. Clone repo, install ruby 2.4.4 postgres, and bundler
2. `bundle install`
3. `rails db:setup`
4. `rails s`

Then you can log in to the admin with `admin@example.com` or log in to user pages with `user@example.com`. (Both have the password `password`) See `seeds.rb` for more.

## Current Issues

> _NB: I'm not using gh issues yet because I'm just trying to plough through the initial
bits of functionality using standard approaches, and come back later to clean up.
I'm keeping a list here so I can hopefully commit notes on ongoing issues as I create them._


1. There's no uniqueness constraint on users_languages the way there is with decks. (`["user_id", "language_id"]`)
