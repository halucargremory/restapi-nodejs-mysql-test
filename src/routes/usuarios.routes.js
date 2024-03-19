import { Router } from 'express'
import {getUsuarios, 
        createUsuario, 
        updataUsuario,  
        deleteUsuario,
        getUsuario
} from '../controllers/controllers.usuarios.js'

const router = Router()

router.get('/usuarios', getUsuarios) //Traeme usuarios
router.get('/usuarios/:id', getUsuario) // Traeme un usuario
router.post('/usuarios', createUsuario) // ingresa un nuevo usuario
router.put('/usuarios/:id', updataUsuario) // edita un usuario
//router.patch('/usuarios/:id', updataUsuario) // edita solo un campo del usuario con la propiedad patch
router.delete('/usuarios/:id', deleteUsuario) //elimina un usuario

export default router