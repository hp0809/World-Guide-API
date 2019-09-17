const LanguageService = {
    listLanguage(db){
        return db
            .from('language')
            .select('*')
    },
    getLanguageByCountryName(knex, countryName) {
        return knex
            .from('language')
            .where('country_name', countryName)
            .first()
    }
}

module.exports = LanguageService;