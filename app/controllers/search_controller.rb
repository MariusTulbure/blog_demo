class SearchController < ApplicationController
  def index
    @query = Post.ransack(params[:q])
  end
end
=begin
Ransack needs Post attributes explicitly allowlisted as
searchable. Define a `ransackable_attributes` class method in your `Post`
model, watching out for items you DON'T want searchable (for
example, `encrypted_password`, `password_reset_token`, `owner` or
other sensitive information). You can use the following as a base:
=end
