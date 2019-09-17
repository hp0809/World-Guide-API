const express = require('express');
const logger = require('../logger');
const LanguageService = require('./language-service')

const languageRouter = express.Router();

languageRouter
    .route('/')
    .get((req, res, next) => {
        LanguageService.listLanguage(req.app.get('db'))
            .then(language => {
                res.json(language)
            })        
            .catch(next)
    })

languageRouter
    .route('/:countryName')
    .get((req, res, next) => {
        const {countryName} = req.params
        const knexInstance = req.app.get('db')
        LanguageService.getLanguageByCountryName(
            knexInstance,
            countryName
        )
        .then(language => {
            if(!language) {
                logger.error(`Language for ${countryName} not found.`)
                return res.status(404).json({
                    error: {message: `Language not found`}
                    })
                }                    
            res.json(language)
        })
        .catch(next)
    })

module.exports = languageRouter;
        