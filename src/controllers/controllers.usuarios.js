//import { error } from 'qrcode-terminal'
import { pool } from '../db.js'
//import { Status } from 'whatsapp-web.js'

//obtener todos los usuarios
export const getUsuarios = async(req, res) =>{
  try {
    //throw new error('MI ERROR') // Forzar error para ver respuesta del servidor
    const [rows] = await pool.query('SELECT * FROM personal ')
    res.json(rows)
  } catch (error) {
    return res.status(500).json({message: 'Algo salio mal :( "something goes wrong"'})    
  }
}

//Obtener un solo usuario con un parametro
export const getUsuario = async(req,res)=>{
    try {
    const [rows] = await pool.query('SELECT * FROM personal WHERE ID_PERSONAL = ?', [req.params.id])
    if(rows.length <=0)
        {
          return res.status(400).json({message:'Usuario no encontrado'})
        }
    console.log(rows[0])
    res.json(rows[0])
    //res.send('obtener empleado')
    } catch (error) {
      return res.status(500).json({message: 'Algo salio mal :( "something goes wrong"'})
    }
}

//agregar un usuario
export const createUsuario = async (req, res) =>{
  try {
    const {COMEDOR, PERSONAL, NOMBRE, TELEFONO, USUARIO, CONTRASEÑA} =req.body
    const [rows] = await pool.query('INSERT INTO Personal (COMEDOR, PERSONAL, NOMBRE, TELEFONO, USUARIO, CONTRASEÑA) VALUES (?,?,?,?,?,?)',[COMEDOR,PERSONAL,NOMBRE,TELEFONO,USUARIO,CONTRASEÑA])
    console.log(req.body)
    res.send({
        ID_PERSONAL:rows.insertId,
        COMEDOR,
        PERSONAL,
        NOMBRE,
        TELEFONO,
        USUARIO,
        CONTRASEÑA
    })
  } catch (error) {
    return res.status(500).json({message: 'Algo salio mal :( "something goes wrong"'})
  }
}

//eliminar un usuario
export const deleteUsuario = async (req, res) =>{
  try {
    const [result] =await pool.query('DELETE FROM personal WHERE ID_PERSONAL = ?',[req.params.id])
    if(result <=0 )
        return res.status(404).json({
        message: 'empleado no eliminado'
    })
  console.log('usuario eliminado'+result)
  res.send(204)
  } catch (error) {
    return res.status(500).json({message: 'Algo salio mal :( "something goes wrong"'})
  }
}

export const updataUsuario = async (req, res) => {
    try {
      const { id } = req.params;
      const { COMEDOR, PERSONAL, NOMBRE, TELEFONO, USUARIO, CONTRASEÑA } = req.body;
  
      const [result] = await pool.query(
        "UPDATE personal SET  COMEDOR = IFNULL(?,COMEDOR), PERSONAL = IFNULL(?,PERSONAL), NOMBRE = IFNULL(?,NOMBRE), TELEFONO = IFNULL(?,TELEFONO), USUARIO = IFNULL(?,USUARIO),  CONTRASEÑA = IFNULL(?,CONTRASEÑA) WHERE ID_PERSONAL = ?",
        [COMEDOR,PERSONAL,NOMBRE,TELEFONO,USUARIO, CONTRASEÑA, id]
       );
  
      if (result.affectedRows === 0)
        return res.status(404).json({ message: "Persoal no eliminado" });
  
      const [rows] = await pool.query("SELECT * FROM personal WHERE ID_PERSONAL = ?", [
        id,
      ]);
      
      res.json(rows[0]);
    } catch (error) {
      return res.status(500).json({ message: "Algo salio mal :(" });
    }
  };