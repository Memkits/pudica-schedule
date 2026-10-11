
Pudica Schedule
------

> Built in stable Calcit 0.29.0 and Respo.

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

CI 保留严格依赖、工具链一致性、规范格式、全定义严格检查与原有任务业务测试。Reel 使用 `reel.typed/State Op Store`，业务事件使用名义 `Op` 构造器；未解决的 Dynamic 槽位从 1 降为 0，直接通过现有 weak-types 报告执行零债务门禁，不再需要单独的基线脚本。开放 Respo 事件和异构 UI states 仍是明确的边界，不代表整个应用没有 Dynamic。上传及公开访问校验只使用 COS Action 内置 verify，不再运行重复 CDN 校验测试或迁移诊断报告。

PR 预览按 PR 编号、运行编号和重试次数隔离，生产部署路径不变。`yarn dev` 先编译一次再启动 Vite；实时修改 Calcit 时另开终端运行 `calcit calcit.cirru js -w`，无需增加 concurrently。

COS 使用已核对固定提交的 1.2.0，唯一上传验证为 `public-base-url` 内置 verify。安装器从 `deps.cirru` 读取版本，已有工具链核验保留；串行队列保留待处理运行，job 限时 15 分钟、上传步骤限时 10 分钟。原业务测试、字体、生产与 PR/run/attempt 前缀和服务器路径不变。Calcit 与 @calcit/procs 固定为正式 0.29.0，Respo / UI / Reel 与 js-ffi 使用正式标签，依赖通过 caps 严格解析。

### Local storage compatibility

启动时校验并迁移旧 Map / 新 Struct 存档，恢复 Store、Task 和 Option 的运行时类型。旧任务的空 created-time 迁移为 0，空完成/归档时间迁移为 Option :none。损坏或字段类型不符的存档会显示错误并暂停自动保存，避免覆盖原数据；修复存档后重新加载即可恢复保存。

本地编译器也必须使用发布的 0.29.0；即使开发版报告相同版本号，也应避免混用未发布的编译器与 npm 运行库。Respo 固定为已验证的依赖组合，升级依赖需同时检查浏览器启动。

`yarn compile` 会核对编译器与已安装运行库版本，优先使用项目内 `.calcit/bin/calcit`，否则使用 PATH 中的 `calcit`。编译前清理生成的 js-out，避免不同编译器构建留下不兼容的增量产物。项目内编译器只用于本地隔离，不提交到 Git；CI 按 deps.cirru 安装固定发布版本。

Respo 事件回调按实际 Map 契约读取；多任务排序按 Task Struct 字段读取。回归测试覆盖真实事件转换和多个任务的渲染。

当前 Respo DOM 类型包含只在部分元素上存在的字段。Vite 的运行库适配仅对真实原生 DOM Element 使用 instanceof 校验，其余 js-cast 保留运行库检查；不向 DOM 原型补属性。

### License

MIT
