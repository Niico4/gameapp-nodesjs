import { Sequelize } from 'sequelize';
import db from '../config/db.js';

export const Game = db.define('games', {
  title: {
    type: Sequelize.STRING,
  },
  gender: {
    type: Sequelize.STRING,
  },
  platform: {
    type: Sequelize.STRING,
  },
  release_date: {
    type: Sequelize.DATE,
  },
  price: {
    type: Sequelize.STRING,
  },
  description: {
    type: Sequelize.STRING,
  },
  image: {
    type: Sequelize.STRING,
  },
  slug: {
    type: Sequelize.STRING,
  },
});
