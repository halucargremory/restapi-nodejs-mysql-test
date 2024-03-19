import express from 'express'
import rutausuarios from './routes/usuarios.routes.js'
import indexRoutes from './routes/index.routes.js'
//import './config.js'


const app = express()
app.use(express.json())
app.use('/api', rutausuarios)
app.use(indexRoutes)
app.use((req,res,nex) =>{
    res.status(404).json({  //En caso de que pase por todas las rutas y esta no corresponda a ninguna
        message:'punto de acceso no encontrado.'    //Mandara el siguiente msj 'PUNTO DE ACCESO NO ENCONTRADO.'
    })
})

export default app;