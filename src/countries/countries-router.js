const express = require('express');
const logger = require('../logger')
const CountriesService = require('./countries-service');

const countriesRouter = express.Router();

countriesRouter
    
    .route('/')
    .get((req, res, next) => {
        CountriesService.listCountries(req.app.get('db'))
            .then(country => {
                res.json(country)
            })        
            .catch(next)
    })

countriesRouter
    .route('/:countryName')
    .get((req, res, next) => {
        const {countryName} = req.params
        const knexInstance = req.app.get('db')
        CountriesService.getCountryByName(
            knexInstance,
            countryName
        )
        .then(country => {
            if(!country) {
                logger.error(`Country with id ${countryName} not found.`)
                return res.status(404).json({
                    error: {message: `Country not found`}
                    })
                }                    
            res.json(country)
        })
        .catch(next)
    })


module.exports = countriesRouter;