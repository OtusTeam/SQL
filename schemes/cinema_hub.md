### Table public.actor 
Данные об актёрах

|Idx |Name |Data Type |Description |
|---|---|---|---|
| * &#128273;  &#11019; | actor\_id| serial  | Уникальный идентификатор актёра |
|  | first\_name| varchar(100)  | Имя актёра |
|  | last\_name| varchar(100)  | Фамилия актёра |
|  | birth\_date| date  | Дата рождения актёра |
|  | nationality| varchar(100)  | Национальность актёра |


##### Indexes 
|Type |Name |On |
|---|---|---|
| &#128273;  | actor\_pkey | ON actor\_id|



### Table public.customer 
Данные о клиентах

|Idx |Name |Data Type |Description |
|---|---|---|---|
| * &#128273;  &#11019; | customer\_id| serial  | Уникальный идентификатор клиента |
|  | first\_name| varchar(100)  | Имя клиента |
|  | last\_name| varchar(100)  | Фамилия клиента |
|  | email| varchar(255)  | Электронная почта клиента |
|  | phone\_number| varchar(20)  | Номер телефона клиента |
|  | address| varchar(255)  | Адрес проживания клиента |
|  | registration\_date| date  | Дата регистрации клиента |
|  | preferences| jsonb  | Предпочтения клиента |


##### Indexes 
|Type |Name |On |
|---|---|---|
| &#128273;  | customer\_pkey | ON customer\_id|



### Table public.movie 
Информация о фильмах

|Idx |Name |Data Type |Description |
|---|---|---|---|
| * &#128273;  &#11019; | movie\_id| serial  | Уникальный идентификатор фильма |
| * | title| varchar(255)  | Название фильма |
|  | release\_year| integer  | Год выхода фильма |
|  | genre| varchar(100)  | Жанр фильма |
|  | rating| numeric(2,1)  | Рейтинг фильма |
|  | duration| integer  | Продолжительность фильма в минутах |
|  | description| text  | Краткое описание фильма |
|  | additional\_info| jsonb  | Дополнительная информация о фильме. |


##### Indexes 
|Type |Name |On |
|---|---|---|
| &#128273;  | movie\_pkey | ON movie\_id|



### Table public.movie_actor 
Связь фильмов и актёров

|Idx |Name |Data Type |Description |
|---|---|---|---|
| * &#128273;  | movie\_actor\_id| serial  | Уникальный идентификатор записи |
| * &#11016; | movie\_id| integer  | Ссылка на фильм |
| * &#11016; | actor\_id| integer  | Ссылка на актёра |


##### Indexes 
|Type |Name |On |
|---|---|---|
| &#128273;  | movie\_actor\_pkey | ON movie\_actor\_id|

##### Foreign Keys
|Type |Name |On |
|---|---|---|
|  | movie_actor_movie_id_fkey | ( movie\_id ) ref [public.movie](#movie) (movie\_id) |
|  | movie_actor_actor_id_fkey | ( actor\_id ) ref [public.actor](#actor) (actor\_id) |




### Table public.rental 
Информация об аренде фильмов

|Idx |Name |Data Type |Description |
|---|---|---|---|
| * &#128273;  | rental\_id| serial  | Уникальный идентификатор аренды |
| &#11016; | customer\_id| integer  | Ссылка на клиента, который арендует фильм |
| &#11016; | movie\_id| integer  | Ссылка на арендованный фильм |
|  | rental\_date| date  | Дата аренды |
|  | return\_date| date  | Дата возврата |


##### Indexes 
|Type |Name |On |
|---|---|---|
| &#128273;  | rental\_pkey | ON rental\_id|

##### Foreign Keys
|Type |Name |On |
|---|---|---|
|  | rental_customer_id_fkey | ( customer\_id ) ref [public.customer](#customer) (customer\_id) |
|  | rental_movie_id_fkey | ( movie\_id ) ref [public.movie](#movie) (movie\_id) |





