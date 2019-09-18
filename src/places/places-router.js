const express = require('express');
const logger = require('../logger');
const PlacesService = require('./places-service')

const placesRouter = express.Router();

placesRouter
    .route('/')
    .get((req, res, next) => {
        PlacesService.listPlaces(req.app.get('db'))
            .then(place => {
                res.json(place)
            })        
            .catch(next)
    })

placesRouter
    .route('/:countryName')
    .get((req, res, next) => {
        const {countryName} = req.params
        const knexInstance = req.app.get('db')
        PlacesService.getPlacesByCountryName(
            knexInstance,
            countryName
        )
        .then(place => {
            if(!place) {
                logger.error(`Places for ${countryName} not found.`)
                return res.status(404).json({
                    error: {message: `Place not found`}
                    })
                }                    
            res.json(place)
        })
        .catch(next)
    })

module.exports = placesRouter;
        