
const CountriesService = {
    listCountries(db){
        return db
            .from('countries')
            .select('*')
    },
    getCountryByName(knex, countryName) {
        return knex
            .from('countries AS country')
            .where('country.name', countryName)
            .first()
            
    }
}

module.exports = CountriesService;