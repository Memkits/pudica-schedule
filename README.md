
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

COS 使用已核对固定提交的 1.2.0，唯一上传验证为 `public-base-url` 内置 verify。安装器从 `deps.cirru` 读取版本，已有工具链核验保留；串行队列保留待处理运行，job 限时 15 分钟、上传步骤限时 10 分钟。原业务测试、弱类型预算、字体、生产与 PR/run/attempt 前缀和服务器路径不变。本轮仅交付 COS 配置，Calcit/procs 仍为正式 0.27.0，不将其构建通过记为 0.28 升级完成。

### License

MIT
