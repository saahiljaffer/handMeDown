const mongoose = require('mongoose');
const Schema = mongoose.Schema;

// creating a geolocation Schema
const GeoSchema = new Schema({
    type: {
        type: "String",
        default: "Point", 
    },
    coordinates: {
        type: [Number],
        index: "2dsphere"
    }
});

// creating a person schema, ie the data types and whether they 
//   required or not
const PersonSchema = new Schema({
    name: {
        type: String,
        required: [true, 'Name field required']
    },
    item: {
        type: String 
    },
    
    size: {
        type: String 
    },
    gender: {
        type: String 
    },
    available: {
        type: Boolean,
        default: false //default value of parameter
    },

    // adding the GeoSchema:
    geometry: GeoSchema  
});

// creating a person model
// Here, persons should be the name of our collection as
//  mongoose pluralises the passed parameter
const Person = mongoose.model('person', PersonSchema);

// exporting module
module.exports = Person; 