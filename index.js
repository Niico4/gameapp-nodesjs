import express from 'express';

import db from './config/db.js';
import router from './routes/index.js';

const app = express();

// Conectar db
db.authenticate()
  .then(() => console.log('db conectada'))
  .catch((error) => console.log('db no conectada', error));

// Definir puerto
const port = process.env.PORT || 3001;

// Habilitar PUG
app.set('view engine', 'pug');

// Obtener año actual
app.use((req, res, next) => {
  res.locals.currentYear = new Date().getFullYear();
  res.locals.nameSite = 'GameHaven';

  next();
});

// Agregar body parse
app.use(express.urlencoded({ extended: true }));

// Definir la carpeta publica
app.use(express.static('public'));

// Agregar router
app.use('/', router);

app.listen(port, () => {
  console.log(`Server is running in the port ${port}`);
});
