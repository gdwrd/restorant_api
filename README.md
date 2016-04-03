# Restaurants Api
This is test job for this [task](https://gist.github.com/logika/72d1c4df40f1601aeb32)

## Documentation

#### To get a list of nearest restaurants

```
  GET http://example.com/api/restorants/near?longitude=145.2&latitude=45.5
```

#### To get a list of nearest restaurants in the suited at least one of the specified atmospheres filter list

```
  GET http://example.com/api/restorants/near_by?atmosfere_ids={1,2}&latitude=123.2&longitude=34.4
```

#### To get a list of all atmospheres

```
  GET http://example.com/api/atmosfere
```

#### To send new order

```
  POST http://example.com/api/orders/new
```

#### POST data body

```ruby  
 {
    name: 'John Smith',
    restorant_id: 1,
    quantity: 2,
    email: john@example.com,
    datetime: 2016-05-05 14:00
  }
```
