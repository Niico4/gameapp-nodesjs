import express from 'express';
import {
  aboutUsPage,
  gamesPage,
  homePage,
  reviewPage,
  gameDetailPage,
} from '../controllers/pages.controller.js';
import { saveReview } from '../controllers/review.controller.js';

const router = express.Router();

router.get('/', homePage);

router.get('/about-us', aboutUsPage);

router.get('/games', gamesPage);
router.get('/games/:game', gameDetailPage);

router.get('/review', reviewPage);
router.post('/review', saveReview);

export default router;
