var express = require("express");
var router = express.Router();

var novedadesModel = require("../../models/novedadesModel");

router.get("/", async function (req, res, next) {
  var novedades = await novedadesModel.getNovedades(); 
  res.render("admin/novedades", {
    layout: "admin/layout",
    nombre: req.session.nombre,novedades

  });
});

// diseño eliminar novedades
router.get("/eliminar/:id", async (req, res, next) => {
    const id = req.params.id;
    await novedadesModel.deleteNovedadesById(id);
    res.redirect("/admin/novedades")
});

// diseño pagina agregar novedades
router.get("/agregar", (req, res, next) => {
  res.render("admin/agregar", { 
    layout: "admin/layout"
  })
});

//inserta novedad en BD
router.post("/agregar", async (req, res, next) => {
  try {
    if (req.body.titulo != "" && req.body.subtitulo != "" && req.body.cuerpo != "") {
      await novedadesModel.insertNovedades(req.body);
      res.redirect("/admin/novedades")
    } else {
      res.render ("admin/agregar" ,{
        layout: "admin/layout",
        error: true,
        message: "todos los campos son requeridos"
      })
    }
  } catch (error) {
    console.log(error)
    res.render("admin/agregar", {
      layout: "admin/layout",
      error: true,
      message: "no se carga la novedad"
    })
  }
});

// diseño modificar novedades + traer novedad
router.get("/modificar/:id", async (req, res, next) => {
  const id = req.params.id;
  var novedades = await novedadesModel.getNovedadesById(id);
  res.render("/admin/modificar", {
    layout: "admin/layout",
    novedades
  });
});

//actualizo la novedades
router.post("/modificar", async (req, res, next) => {
  try {
    console.log(req.body.id); //para ver si lo trae
    var obj = {
      titulo: req.body.titulo,
      subtitulo: req.body.subtitulo,
      cuerpo: req.body.cuerpo
    }
    console.log(obj)
    await novedadesModel.modificarNovedadesById(obj, req.body.id);
    res.redirect("/admin/novedades");
    } catch (error) {
    console.log(error)
    res.render("admin/modificar", {
      layout: "admin/layout",
      error: true,
      message: "no se modifico la novedad"
    })
  }
});





module.exports = router;
