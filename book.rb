class Book
  att_accessor :title, :author

  def initialize(title, author)
    @title = title
    @author = author
  end
end
