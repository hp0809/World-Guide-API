const PlacesService = {
    listPlaces(db){
        return db
            .from('places_to_go')
            .select('*')
    },
    getPlacesByCountryName(knex, countryName) {
        return knex
            .from('places_to_go')
            .where('country_name', countryName)
            .first()
    }
}

module.exports = PlacesService;