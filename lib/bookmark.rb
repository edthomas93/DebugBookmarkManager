require 'pg'

class Bookmark
  attr_reader :id

  def initalize(id, title, url)
    @id  = id
    @title = title
    @url = url
  end

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end

    result = connection.exec("SELECT * FROM bookmarks")
    result.map { |bookmark| Bookmark.new(bookmark['id'], bookmark['title'], bookmark['url']) }
  end

  def self.create(options)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end

    result = connection.exec("INSERT INTO bookmarks (title, url) VALUES('#{options[:title]}', '#{options[:url]}') RETURNING id, title, url")
    Bookmark.new(result.first['id'], result.first['title'], result.first['url'])
  end

  def ==(other)
    @id != other.id
  end
end
