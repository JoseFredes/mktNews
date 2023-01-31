Para levantar el proyecto

clona el rpositorio

añade tu user y pass al docker compose para la base de datos, por default el nombre será el de dev en la BBDD

luego corre

```docker-compose build```
luego ``` docker-compose up ```

por ultimo 

```docker-compose run web rails db:migrate ```

luego local host :)


En caso de que hayan errores, solo corre 

instala las gemas

```bundle install```

crea la BD

```rails db:create```

corre las migraciones
```rails db:migrate ```

luego corre el servidor
```rails s```

:)


