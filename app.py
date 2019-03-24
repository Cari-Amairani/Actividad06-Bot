import web
        
urls = (
    '/', 'Index',
    '/acercade', 'Acercade',
)

render = web.template.render('templates/', base='master')

class Index: 
    def GET(self):
        equipo =['America','Pachuca', 'Atlas', 'Pumas', 'Tigres']
        jugador= ['Osvaldo Castro', 'Gabriel Caballero', 'Bruno Marioni', 'Nicolas Castillo', 'Andres Silvera']
        goles=['63', '69', '10', '11', '16']
        return render.index(equipo, jugador, goles)

class Acercade: 
    def GET(self):
        equipo = "America","Pachuca", "Atlas", "Pumas", "Tigres"
        jugador= "Osvaldo Castro", "Gabriel Caballero", "Bruno Marioni", "Nicolas Castillo", "Andres Silvera"
        goles= "63", "69", "10", "11", "16"
        return render.acercade(equipo, jugador, goles)

if __name__ == "__main__":
    web.config.debug = False
    app = web.application(urls, globals())
    app.run()
