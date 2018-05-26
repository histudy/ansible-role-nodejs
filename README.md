nodejs
=========

[Node.js](https://nodejs.org/)のインストールを行います。

Role Variables
--------------

| 変数名               | 内容                                                    |
| -------------------- | ------------------------------------------------------- |
| nodejs_major_version | インストールするNode.jsのメジャーバージョンを指定します |
|                      |                                                         |

### nodejs_major_version

インストールするnode.jsのメジャーバージョンを指定します。

#### Example

```yml
nodejs_major_version: 8
```


Example Playbook
----------------

```yml
- hosts: servers
  roles:
     - { role: nodejs }
```

License
-------

MIT
