
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
Public upload verification uses cos-upload-action's built-in verify settings,
with no extra CDN checker. Original server
deployment paths and external shared resources are unchanged.

CI 保留严格依赖、工具链一致性、规范格式、入口及公开定义检查、原有弱类型基线与任务业务测试。上传及公开访问校验只使用 COS Action 内置 verify，不再运行重复 CDN 校验测试或迁移诊断报告。

PR 预览按 PR 编号、运行编号和重试次数隔离，生产部署路径不变。`yarn dev` 先编译一次再启动 Vite；实时修改 Calcit 时另开终端运行 `calcit calcit.cirru js -w`，无需增加 concurrently。

### License

MIT
