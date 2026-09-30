
Pudica Schedule
------

> Built in Calcit 0.27.0 and Respo.

Demo: http://r.tiye.me/Memkits/pudica-schedule/

![](https://cdn.tiye.me/logo/pudica.png)

Features:

* Enter to add task
* Clear content to remove task
* Tab to focus up and down
* Drag to move focused task

### Develop

https://github.com/calcit-lang/respo-calcit-workflow

Use `caps --ci --strict` and `yarn install --immutable`, then `yarn build`
and `node --test tests/*.test.mjs`. The canonical files are `calcit.cirru`
and `deps.cirru`; CI rejects retired `compact.cirru` / `package.cirru` files.
Generated frontend HTML is checked against the selected CDN asset prefix.
Public upload verification runs inside cos-upload-action; original server
deployment paths and external shared resources are unchanged.

### License

MIT
