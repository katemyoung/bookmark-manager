def reset_table
  conn = PG.connect( dbname: 'bookmark_manager_test' )
  conn.exec( "TRUNCATE TABLE bookmarks")
end

def populate_table
  conn = PG.connect(dbname: 'bookmark_manager_test')
  conn.exec( "INSERT INTO bookmarks VALUES (1, 'http://www.makersacademy.com');")
  conn.exec( "INSERT INTO bookmarks VALUES (2, 'http://www.destroyallsoftware.com');")
  conn.exec( "INSERT INTO bookmarks VALUES (3, 'http://www.google.com');")
end