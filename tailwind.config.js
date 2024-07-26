/** @type {import('tailwindcss').Config} */
export default {
  content: ['./views/**/*.pug', './public/**/*.js'],
  theme: {
    extend: {
      fontFamily: {
        staatliches: 'Staatliches',
        covered: 'Covered By Your Grace',
      },
    },
  },
  plugins: [],
};
