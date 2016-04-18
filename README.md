#### README

本项目的依赖：
rails: 5.0.0.beta3
ruby: 2.3.0
postgresql: 9.5.1


### 创建postgresql用户

```sql
  create role yooo SUPERUSER login password 'king';
  create database bilibili_roles with owner 'yooo';
```
