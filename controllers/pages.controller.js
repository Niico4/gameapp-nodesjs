import { Game } from '../models/Game.model.js';
import { Review } from '../models/Reviews.model.js';
import moment from 'moment';

const homePage = async (req, res) => {
  const data = [];

  data.push(Game.findAll({ limit: 4 }));
  data.push(Review.findAll({ limit: 3 }));

  try {
    const resData = await Promise.all(data);
    res.render('home', {
      page: 'Inicio',
      clases: 'home',
      games: resData[0],
      reviews: resData[1],
    });
  } catch (error) {
    console.log(error);
  }
};

const aboutUsPage = (req, res) => {
  res.render('about-us', {
    page: 'Sobre Nosotros',
  });
};

const gamesPage = async (req, res) => {
  // Consultar db
  const games = await Game.findAll();

  const formattedGames = games.map((game) => ({
    ...game.dataValues,
    formattedReleaseDate: moment(game.release_date).format('DD-MM-YYYY'),
  }));

  res.render('games', {
    page: 'Juegos',
    games: formattedGames,
  });
};

// Pagina dinamica por el slug
const gameDetailPage = async (req, res) => {
  const { game } = req.params;

  try {
    const response = await Game.findOne({ where: { slug: game } });

    res.render('game', {
      pagina: 'Información del Juego',
      response,
    });
  } catch (error) {
    console.log(error);
  }
};

const reviewPage = async (req, res) => {
  try {
    const reviews = await Review.findAll();

    res.render('review', {
      page: 'Reseñas',
      reviews,
    });
  } catch (error) {
    console.log(error);
  }
};

export { homePage, aboutUsPage, gamesPage, reviewPage, gameDetailPage };
