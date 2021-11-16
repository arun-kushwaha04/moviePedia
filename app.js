const movies = require('./movie')
const mysql = require('mysql');
const express = require('express');

const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'flashisarun',
    database: 'moviepedia'
})

db.connect((err) => {
    if (err) console.log(err)
    else console.log("Connected To DB")
})

// first insert data to movie table
// let query1 = `INSERT INTO movie values('${movie.movie_details.title}','${movie.movie_details.description}','${movie.movie_details.language}','${movie.movie_details.release_date}','${movie.movie_details.budget}','${movie.movie_details.gross_worlwide}','${movie.movie_details.runtime}','${movie.movie_details.adult}','${movie.movie_details.rating}')`

// second insert the data in director table
// let query2 = `INSERT INTO directors values('${movie.director.name}','${movie.director.gender}','${movie.director.nationality}','${movie.director.estimatedWealth}')`

//third insert data in producer table
// let query3 = `INSERT INTO producers values('${movie.producer.name}','${movie.producer.gender}','${movie.producer.nationality}','${movie.producer.estimatedWealth}')`

// fourth insert data in production_companies table
// let query4 = `INSERT INTO production_comapnies values('${movie.production_comapnies.name}','${movie.production_comapnies.origin_country}')`

//fifth insert data in actors table
// let query5 = `INSERT INTO actor_info values('${actor.name}','${actor.gender}','${actor.birthday}','${actor.nationality}','${actor.estimatedWealth}')`

const app = express()

app.listen(8000, () => {
    console.log('Server running on 8000')
})

app.get('/', async(req, res) => {
    let i = 0;
    await addMovie(movies, i)
    console.log('finally added')
    res.send('Added data can check database at localhost port 3360')

})

const addDirectorOrProducer = (movie, table, primarykey, moviekey, realtionTable, moiveId) => {
    return new Promise(async function(resolve, reject) {
        let savedId
        let [firstName, lastName] = movie[moviekey].name.split(' ')
        let object = movie[moviekey]

        db.query(`SELECT ${primarykey} from ${table} as t1 WHERE (t1.first_name = '${firstName}' AND t1.last_name = '${lastName}' AND  t1.nationality = '${object.nationality}')`, (err, result) => {
            if (err) {
                console.log(err)
                reject('Failed')
            } else {
                console.log(result)
                if (result.length === 0) {
                    db.query(`INSERT INTO ${table}  (first_name,last_name,gender,nationality,net_worth) values('${firstName}','${lastName}','${object.gender}','${object.nationality}','${object.estimatedWealth}')`, (err, result) => {
                        if (err) {
                            console.log(err)
                            reject('Failed')
                        } else {
                            savedId = result.insertId
                            db.query(`INSERT INTO ${realtionTable} values (${moiveId},${savedId})`, (err, result) => {
                                if (err) {
                                    console.log(err)
                                    reject('Failed')
                                } else {
                                    resolve('completed')
                                }
                            })
                        }
                    })
                } else {
                    let temp = JSON.stringify(result)
                    temp = temp.split(':')[1]
                    temp = temp.slice(0, temp.length - 1)
                    temp = temp.slice(0, temp.length - 1)
                    savedId = temp
                    db.query(`INSERT INTO ${realtionTable} values (${moiveId},${savedId})`, (err, result) => {
                        if (err) {
                            console.log(err)
                            reject('Failed')
                        } else {
                            resolve('completed')
                        }
                    })
                }
            }
        })
    })
}
const addCompnay = (movie, movieId) => {
    return new Promise(function(resolve, reject) {
        let companyId
        db.query(`SELECT production_company_id from production_company_info as t1 WHERE (t1.production_compnay_name = '${movie.productionCompany.name}' and t1.origin_country = '${movie.productionCompany.origin_country}')`, async(err, result) => {
            if (err) {
                console.log(err)
            } else {
                if (result.length === 0) {
                    await db.query(`INSERT INTO production_company_info (production_compnay_name,origin_country) values('${movie.productionCompany.name}','${movie.productionCompany.origin_country}')`, (err, result) => {
                        if (err) {
                            console.log(err)
                        } else {
                            companyId = result.insertId
                            db.query(`INSERT INTO production_company values (${movieId},${companyId})`, (err, result) => {
                                if (err) {
                                    console.log(err)
                                    reject('Failed')
                                } else {
                                    resolve('Completed')
                                }
                            })
                        }
                    })
                } else {
                    let temp = JSON.stringify(result)
                    temp = temp.split(':')[1]
                    temp = temp.slice(0, temp.length - 1)
                    temp = temp.slice(0, temp.length - 1)
                    companyId = temp
                    db.query(`INSERT INTO production_company values (${movieId},${companyId})`, (err, result) => {
                        if (err) {
                            console.log(err)
                            reject('Failed')
                        } else {
                            resolve('Completed')
                        }
                    })
                }
            }
        })
    })
}

const addCast = (cast) => {
    return new Promise(function(resolve, reject) {
        let [firstName, lastName] = cast.name.split(' ')
        db.query(`SELECT actor_id from actor_info as t1 WHERE (t1.first_name = '${firstName}' and t1.last_name = '${lastName}' and t1.nationality = '${cast.nationality}' and t1.date_of_birth = '${cast.birthday}')`, (err, result) => {
            if (err) {
                console.log(err)
            } else {
                if (result.length === 0) {
                    db.query(`INSERT INTO actor_info (first_name,last_name,gender,date_of_birth,nationality,net_worth) values('${firstName}','${lastName}','${cast.gender}','${cast.birthday}','${cast.nationality}','${cast.estimatedWealth}')`, (err, result) => {
                        if (err) {
                            console.log(err)
                        } else {
                            resolve(result.insertId)
                        }
                    })
                } else {
                    let temp = JSON.stringify(result)
                    temp = temp.split(':')[1]
                    temp = temp.slice(0, temp.length - 1)
                    temp = temp.slice(0, temp.length - 1)
                    resolve(temp)
                }
            }
        })
    })
}

const addAward = (name, category) => {
    return new Promise(function(resolve, reject) {
        db.query(`SELECT award_id from award as t1 WHERE (t1.award_name = '${name}' and t1.award_category = '${category}')`, (err, result) => {
            if (err) {
                console.log(err)
            } else {
                if (result.length === 0) {
                    db.query(`INSERT INTO award (award_name,award_category) values('${name}','${category}')`, (err, result) => {
                        if (err) {
                            console.log(err)
                        } else {
                            resolve(result.insertId)
                        }
                    })
                } else {
                    let temp = JSON.stringify(result)
                    temp = temp.split(':')[1]
                    temp = temp.slice(0, temp.length - 1)
                    temp = temp.slice(0, temp.length - 1)
                    resolve(temp)
                }
            }
        })
    })
}


const addActorAndAward = (actors, EIDR) => {
    return new Promise((resolve, reject) => {
        actors.forEach(cast => {
            let actor_ID
            addCast(cast)
                .then(val => {
                    actor_ID = val
                    db.query(`INSERT INTO cast_info values (${EIDR},${actor_ID},'${cast.character}')`, (err, result) => {
                        if (err) {
                            console.log(err)
                            reject('Failed')
                        }
                    })
                    if (cast.awards && cast.awards.length > 0) {
                        cast.awards.forEach(award => {
                            addAward(award.award_name, award.award_category).then(val => {
                                let awardId = val
                                db.query(`INSERT INTO awarded_to_for values(${EIDR},${actor_ID},'${awardId}','${award.award_year}')`, (err, result) => {
                                    if (err) {
                                        console.log(err)
                                        reject('Failed')
                                    }
                                })
                            })
                        })
                    }
                    resolve('Added Cast And Awards')
                })
        })
    })
}

const addgenre = (name) => {
    return new Promise(function(resolve, reject) {
        db.query(`SELECT genre_name from genres as t1 WHERE (t1.genre_name = '${name}')`, (err, result) => {
            if (err) {
                console.log(err)
            } else {
                if (result.length === 0) {
                    db.query(`INSERT INTO genres (genre_name) values('${name}')`, (err, result) => {
                        if (err) {
                            console.log(err)
                        } else {
                            resolve(name)
                        }
                    })
                } else {
                    resolve(name)
                }
            }
        })
    })
}

const addGenres = (genres, EIDR) => {
    return new Promise((resolve, reject) => {
        genres.forEach(genre => {
            addgenre(genre)
                .then(val => {
                    db.query(`INSERT INTO genre_for_movie values (${EIDR},'${genre}')`, (err, result) => {
                        if (err) {
                            console.log(err)
                            reject('Failed')
                        }
                    })
                    resolve('Added Genres')
                })
        })
    })
}

const addMovie = (movies, i) => {
    return new Promise(function(resolve, reject) {
        let movie = movies[i]
        let EIDR
        db.query(`SELECT EIDR from movie WHERE movie.title = '${movie.movie_details.title}'`, (err, result) => {
            if (err) {
                console.log(err)
                reject('Failed')
            } else {
                if (result.length === 0) {
                    let subscription_vod
                    if (movie.subscription && movie.subscription.length > 0) {
                        movie.subscription.forEach((subscription, i) => {
                            subscription_vod += subscription
                            if (i < movie.subscription.length) subscription_vod += ';'
                        })
                    } else {
                        subscription_vod = null
                    }
                    db.query(`INSERT INTO movie (title,description,language,release_date,budget,gross_worldwide,runtime,is_adult,rating,subscription_vod) values('${movie.movie_details.title}','${movie.movie_details.description}','${movie.movie_details.language}','${movie.movie_details.release_date}',${movie.movie_details.budget},${movie.movie_details.gross_worlwide},${movie.movie_details.runtime},${movie.movie_details.adult},${movie.movie_details.rating},${subscription_vod})`, async(err, result) => {
                        if (err) {
                            console.log(err)
                            reject('Failed')
                        } else {
                            EIDR = result.insertId
                            await addDirectorOrProducer(movie, 'director_info', 'director_id', 'director', 'directed_by', EIDR)
                            await addDirectorOrProducer(movie, 'producer_info', 'producer_id', 'producer', 'produced_by', EIDR)
                            await addCompnay(movie, EIDR)
                            await addActorAndAward(movie.cast, EIDR)
                            await addGenres(movie.movie_details.genres, EIDR)
                            console.log(`${movie.movie_details.title} cast added successfully`, i)
                            if (i < movies.length - 1) {
                                addMovie(movies, i + 1)
                            } else resolve('Finsihed')
                        }
                    })
                } else {
                    console.log(`${movie.movie_details.title} is already in database please add other movies`)
                    resolve('Finsihed')
                }
            }
        })
    })
}