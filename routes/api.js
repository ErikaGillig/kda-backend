var express = require('express');
var router = express.Router();
var novedadesModel = require('./../models/novedadesModel');
var cloudinary = require('cloudinary').v2;
var nodemailer = require('nodemailer');

router.get('/novedades', async function (req, res, next){
    let novedades = await novedadesModel.getNovedades();

    novedades = novedades.map(novedades => {
        if (novedades.img_id) {
            const imagen = cloudinary.url(novedades.img_id, {
                width: 800,
                height: 400,
                crop: 'fill'
            });
            return {
                ...novedades,
                imagen
            }
        } else {
            return {
                ...novedades,
                imagen: ''
            }
        };
    });
    res.json(novedades);
});

router.post('/contacto', async (req, res) => {
    const mail = {
        to: 'bambam.gillig@gmail.com',
        subject: 'Registro de usuario',
        html: `${req.body.nombre} Se contacto para registrarse en la pagina de K/DA. Enviar confirmación a este
        correo: ${req.body.email} <br> Haciendo el siguiente comentario: ${req.body.mensaje} <br>`

    }
    
    var transport = nodemailer.createTransport({
        host: "smtp.mailtrap.io",
        port: 2525,
        auth: {
          user: "4ef62b61f12d07",
          pass: "fb5280f9f26331"
        }
      });

    await transport.sendMail(mail)

    res.status(201).json({
        error:false,
        message: 'mensaje enviado'
    });
})



module.exports = router;