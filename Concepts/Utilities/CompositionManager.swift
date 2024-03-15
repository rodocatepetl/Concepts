//
//  CompositionManager.swift
//  Concepts
//
//  Created by Rodolfo Castillo on 14/03/24.
//

import Foundation

class CompositionManager {
    
    static let shared = CompositionManager()
    
    lazy var compositions: [PhotoComp] = [
        PhotoComp(
            nombre: "Método Diagonal",
            detalle: "Utiliza líneas diagonales para guiar la mirada a través de la imagen.",
            historia: "Descubierto por Edwin Westhoff en 2006, este método se basa en el uso de líneas diagonales para enfatizar detalles importantes en una composición.",
            teoria: "Las líneas diagonales añaden dinamismo y tensión visual, rompiendo la monotonía de las líneas horizontales y verticales.",
            ejemplos: ["diagonal1.jpg", "diagonal2.jpg"],
            overlay: ["diagonalMethod"],
            icon: "iconDiagonal.png"
        ),
        PhotoComp(
            nombre: "Simetría Dinámica",
            detalle: "Implica el uso equilibrado de elementos simétricos para crear composiciones armónicas.",
            historia: "Con raíces en el arte clásico, esta técnica enfatiza la armonía y el equilibrio visual.",
            teoria: "La simetría dinámica va más allá de la mera duplicación, buscando crear equilibrio visual con variaciones sutiles.",
            ejemplos: ["simetria1.jpg", "simetria2.jpg"],
            overlay: ["dynamicSymetry"],
            icon: "iconSimetria.png"
        ),
        PhotoComp(
            nombre: "Proporción Dorada",
            detalle: "Aplica la proporción dorada para estructurar la composición de forma estéticamente agradable.",
            historia: "Usada desde la antigüedad en el arte y la arquitectura, simboliza la perfección natural y matemática.",
            teoria: "La proporción dorada crea un balance visual natural, guiando inconscientemente la mirada del espectador a través de la imagen.",
            ejemplos: ["proporcionDorada1.jpg", "proporcionDorada2.jpg"],
            overlay: ["goldenRatio"],
            icon: "iconProporcionDorada.png"
        ),
        PhotoComp(
            nombre: "Espiral Dorada",
            detalle: "Organiza elementos siguiendo la espiral dorada, una curva que evoca naturalidad y gracia.",
            historia: "Esta técnica está inspirada en patrones naturales y ha sido utilizada en arte y diseño a lo largo de la historia.",
            teoria: "La espiral dorada guía la mirada del espectador de forma suave y continua, creando una experiencia visual orgánica.",
            ejemplos: ["espiralDorada1.jpg", "espiralDorada2.jpg"],
            overlay: ["goldenSpiral1", "goldenSpiral2", "goldenSpiral3", "goldenSpiral4"],
            icon: "iconEspiralDorada.png"
        ),
        PhotoComp(
            nombre: "Triángulo Dorado",
            detalle: "Usa triángulos que reflejan la proporción dorada para dividir y equilibrar la imagen.",
            historia: "Esta técnica es una variación de la proporción dorada adaptada para composiciones con fuertes elementos diagonales.",
            teoria: "El triángulo dorado añade dinamismo y permite una distribución equilibrada de los elementos dentro del marco.",
            ejemplos: ["trianguloDorado1.jpg", "trianguloDorado2.png"],
            overlay: ["goldenTriangle1", "goldenTriangle2"],
            icon: "iconTrianguloDorado.png"
        ),
        PhotoComp(
            nombre: "Regla de los Tercios",
            detalle: "Divide el encuadre en nueve partes iguales para colocar los puntos de interés en las intersecciones.",
            historia: "Introducida en el siglo XVIII por John Thomas Smith, la regla de los tercios es una de las técnicas de composición más conocidas.",
            teoria: "Colocar elementos importantes en las intersecciones o a lo largo de las líneas de los terciosa equilibra la composición y atrae al espectador hacia la imagen, creando un impacto visual más fuerte y una composición más agradable.",
            ejemplos: ["reglaTercios1.jpg", "reglaTercios2.jpg"],
            overlay: ["ruleOfThirds"],
            icon: "iconReglaTercios.png"
        )
    ]


}
