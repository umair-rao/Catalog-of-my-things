class Item
def initialize(genere, author,source,label,publish_date)
    @genere = genere
    @on_spotify = author
    @on_spotify = source
    @on_spotify = label
    @on_spotify = publish_date
    @id = Random.rand(1..100)
    
end