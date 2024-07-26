import { Review } from '../models/Reviews.model.js';

export const saveReview = async (req, res) => {
  const { name, last_name, email, message } = req.body;
  const reviews = await Review.findAll();

  try {
    await Review.create({
      name,
      last_name,
      email,
      message,
    });
    res.redirect('/review');
  } catch (error) {
    console.log(error);
  }

  res.render('review', {
    page: 'Reseñas',
    name,
    last_name,
    email,
    message,
    reviews,
  });
};
