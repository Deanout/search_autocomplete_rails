class Post < ApplicationRecord
  searchkick text_middle: %i[title body]
end
