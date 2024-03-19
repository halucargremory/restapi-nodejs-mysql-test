import {config} from 'dotenv';

config()

export const PORT = process.env.PORT ||3000
export const DB_HOST = process.env.DB_HOST || localhost
export const DB_PORT = process.env.DB_PORT || 3306
export const DB_USE = process.env.DB_USE || root
export const DB_PASSWORD = process.env.DB_PASSWORD || MOTOCICLETA10
export const DB_DATABASE = process.env.DB_DATABASE || personal_procomin
