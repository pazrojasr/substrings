def substrings(palabra, diccionario)
  palabra = palabra.downcase
  resultado = Hash.new(0)

  diccionario.each do |subcadena|
    cantidad = palabra.scan(subcadena.downcase).length
    resultado[subcadena] += cantidad if cantidad > 0
  end

  return resultado
end

# Ejemplo de uso
diccionario = ["abajo", "hacia abajo", "ir", "yendo", "cuerno", "cómo", "hola", "esto", "yo", "bajo", "propio", "parte", "compañero", "sentarse"]
palabra = "¡Hola compañero, siéntate! ¿Cómo va?"
resultado = substrings(palabra, diccionario)
puts resultado
