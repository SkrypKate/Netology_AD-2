
# Написать запрос, который выводит общее число тегов    
> db.tags.count()
# Результат
158680

# Добавляем фильтрацию: считаем только количество тегов woman
> db.tags.count({'name': 'woman'})
# Результат
19

# Используя группировку данных ($groupby), вывести top-3 самых распространённых тегов
> db.tags.aggregate([{$group: {_id:"$name", tag_count:{ $sum: 1}}},{$sort:{tag_count: -1}},{$limit: 3}])
# Результат
{ "_id" : "woman director", "tag_count" : 3115 }
{ "_id" : "independent film", "tag_count" : 1930 }
{ "_id" : "murder", "tag_count" : 1308 }
