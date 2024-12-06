### Table public.landmarks 
Достопримечательность

|Idx |Name |Data Type |Description |
|---|---|---|---|
| * &#128273;  | id| serial  | Уникальный идентификатор достопримечательности |
| * | name| varchar(255)  | Название достопримечательности |
| * | location| varchar  | Географическое положение достопримечательности (точка, система координат WGS 84) |
|  | boundary| varchar  | Границы достопримечательности (полигон, система координат WGS 84) |


##### Indexes 
|Type |Name |On |
|---|---|---|
| &#128273;  | landmarks\_pkey | ON id|



### Table public.routes 
Маршрут

|Idx |Name |Data Type |Description |
|---|---|---|---|
| * &#128273;  | id| serial  | Уникальный идентификатор маршрута |
| * | start\_location| varchar  | Начальная точка маршрута (система координат WGS 84) |
| * | end\_location| varchar  | Конечная точка маршрута (система координат WGS 84) |
| * | route| varchar  | Линия маршрута между начальной и конечной точками (система координат WGS 84) |


##### Indexes 
|Type |Name |On |
|---|---|---|
| &#128273;  | routes\_pkey | ON id|




