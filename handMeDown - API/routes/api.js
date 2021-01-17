const express = require('express');
const router = express.Router(); 
const mongoose = require('mongoose');
const Person = require('../models/person');

const dbURI = 'mongodb+srv://vkk:Databas3@cluster0.vofsx.mongodb.net/htn-airbnb?retryWrites=true&w=majority';
mongoose.connect(dbURI, { useNewUrlParser: true, useUnifiedTopology: true });

// get a list of [persons] from the db
router.get('/persons', (req, res) => {
    /*
    // If we wanted to find all persons:
    Person.find({}).then(function(persons){
        res.send(persons);
    });
    */

   // Sending persons according to geo loacation 
    // Person.geoNear(
    //     {
    //         type: 'Point',
    //         coordinates: [
    //             parseFloat(req.query.lng),
    //             parseFloat(req.query.lat)
    //         ]
    //     },
    //     {
    //         maxDistance: 100000,
    //         spherical: true
    //     }
    // )
    // .then(result => {
    //     res.send(result);
    // })

    Person.aggregate().near({
       near: {
        'type': 'Point',
        'coordinates': [parseFloat(req.query.lng), parseFloat(req.query.lat)]
       },
       maxDistance: 100000,
       spherical: true,
       distanceField: "distance"
      })
      .then(result => {
          console.log('SUCCESS!');
          res.send(result);
      })
});

// add a new person
router.post('/persons', (req, res) => {
    // create a new person object
    var person = new Person(req.body);
    //saving to the db 
    person.save()
    .then(result => {
        console.log('person saved successfully')
        res.send(result);
    })
    .catch(err => {
        console.log("ERROR in POST: ", err)
    });
    // OR
    // Person.create(req.body);
});

// update an existing person
router.put('/persons/:id', (req, res) => {
    const id = req.params.id;
    // Updating the person
    Person.findByIdAndUpdate({ _id: id }, req.body)
    .then(function(){  
       // Sending back the updated person
      Person.findOne({ _id: id })
      .then(result => {
          console.log('Successsfully UPDATED Person: ', id);
          res.send(result);
      });
    })
});
// NOTE: In the above function, we use Person.findOne() and 
//  dont directly pass person into the .then function, as 
//  it does not(just passing person) return the updated version,
//  instead the old unupdated one. 


// delete a person
router.delete('/persons/:id', (req, res) => {
    const id = req.params.id;
    Person.findByIdAndRemove({ _id: id })
    .then(result => {
        console.log('Successfully deleted Person, ID: ', id);
        res.send(result);
    })
    .catch(err => {
        console.log('Error deleting person(', id, '): ', err);
    }) 
});

module.exports = router;