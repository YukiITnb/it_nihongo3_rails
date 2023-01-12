json.extract! book, :id, :title, :number_ofpages, :created_at, :updated_at
json.url book_url(book, format: :json)
