# nz_identity
Simplified character registration system
### This script is open source

![QQ20211128105243.png](https://imgpp.com/images/2021/11/28/QQ20211128105243.png)


### Features:
- Does not rely on any framework, runs independently
- Return data by calling events
- Simplified style, I think you should like it very much
- The birthplace can be set

Use client-side events to call the registration system
```
   TriggerEvent('nz_identity')
```

Use server-side events to receive data returned by the registration system
```
RegisterServerEvent('nz_identity:data')
AddEventHandler('nz_identity:data', function(data)
    print(data.name)   --Return name
    print(data.date)   --Return date
    print(data.height) --Return height
    print(data.sex)    --Return sex
end)
```
### Return description of gender
**0** means **male**
**1** means **female**
