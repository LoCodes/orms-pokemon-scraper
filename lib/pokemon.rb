class Pokemon

    attr_accessor :id, :name, :type, :db 

    def initialize(id:, name:, type:, db:)
        @id = id 
        @name = name 
        @type = type 
        @db = db
    end

    # .save
    # saves an instance of a pokemon with the correct id

    def self.save(name, type, db) 
    # Pokemon.save("Pikachu", "electric", @db)

        db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", [name, type])
        # expect(pikachu_from_db).to eq([[1, "Pikachu", "electric"]])

    end 

    # Pokemon.save("Pikachu", "electric", @db)

    # pikachu_from_db = Pokemon.find(1, @db)
    # expect(pikachu_from_db.id).to eq(1)
    # expect(pikachu_from_db.name).to eq("Pikachu")
    # expect(pikachu_from_db.type).to eq("electric")

    def self.find(id_num, db) 
        pokemon_info = db.execute("SELECT * FROM pokemon WHERE id=?", id_num).flatten
        Pokemon.new(id: pokemon_info[0], name: pokemon_info[1], type: pokemon_info[2], db: db)
    end 

end
