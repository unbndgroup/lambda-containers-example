const faker = require('faker')
module.exports.handler = async (event, context) => {
    return faker.helpers.createCard()
}