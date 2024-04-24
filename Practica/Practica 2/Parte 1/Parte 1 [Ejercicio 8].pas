{8 Dado el siguiente programa:


program anidamientos;
procedure leer;
var
letra : char;
function analizarLetra : boolean
begin
if (letra >= ‘a’) and (letra <= ‘z’) then
analizarLetra := true;
else
if (letra >= ‘A’) and (letra <= ‘Z’) then
analizarletra := false;
end; 


fin de la funcion analizarLetra 


begin
readln(letra);
if (analizarLetra) then
writeln(‘Se trata de una minúscula’)
else
writeln(‘Se trata de una mayúscula’);
end;  


fin del procedure leer


var
ok : boolean;
begin  programa principal 
leer;
ok := analizarLetra;
if ok then
writeln(‘Gracias, vuelva prontosss’);
end.


a) La función analizarLetra fue declarada como un submódulo dentro del procedimiento leer. Pero esto
puede traer problemas en el código del programa principal.

        i) ¿qué clase de problema encuentra?
            No compila porque no puede identificar la funcion analizarLetra
            
        ii) ¿cómo se puede resolver el problema para que el programa compile y funcione correctamente?
            
            Eliminando las lineas: 'ok := analizarLetra;
                                   if ok then
                                      writeln(‘Gracias, vuelva prontosss’);'
            
            del programa principal, ya que no hace nada.
        
b) La función analizarLetra parece incompleta, ya que no cubre algunos valores posibles de la variable letra.

        i) ¿De qué valores se trata?
            
            Letras con tildes, caracteres especiales y numeros
            
        ii) ¿Qué sucede en nuestro programa si se ingresa uno de estos valores?
        
            Da por defecto como resultado que se trata de minusculas, pero no es correcto
            
        iii) ¿Cómo se puede resolver este problema?
    
}
        
program anidamientos;
procedure leer;
var
letra : char;

function analizarLetra : boolean;
begin
if (letra >= 'a') and (letra <= 'z') then
analizarLetra := true
else
if (letra >= 'A') and (letra <= 'Z') then
analizarletra := false
end; 

{ fin de la funcion analizarLetra }

begin
readln(letra);
if (analizarLetra) then
writeln('Se trata de una minúscula')
else
writeln('Se trata de una mayúscula');
end; 

{ fin del procedure leer}

begin 
{ programa principal }
leer;
end.