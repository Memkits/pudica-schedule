
Pudica Schedule
------

> Built with paired stable Calcit/procs 0.30.1 and formal Respo modules.

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

Calcit/procs 必须精确配对正式 0.30.1。模块固定正式 Reel 0.6.42、Respo 0.16.126、UI 0.8.1、Bisection Key 0.0.36 和 JS-FFI 0.2.6，不固定未发布的候选或 hash。业务类型、存档格式、排序键及原有 `hud!` 页面提示不变，不因升级而重写已有任务。

本轮迁移 26 处旧调用：16 处 Option helper、四处 Map 合并、一处存档字段 List 累加、五处排序集合转 List，采用公开接收者方法。原有解码、类型断言、泛型关系、旧 Map 时间戳归一化和坏存档保护全部保留；不新增强转、默认值、预算或编译器规则。迁移器和完整视图只用于临时验收，不进入项目，不增加永久验证脚本或测试组。

CI 保留严格依赖、工具链一致性、规范格式、全定义/公开定义/完整 strict 与原有 11 项业务测试。Reel 使用真实 `reel.typed/State Op Store`，事件使用 nominal Op；开放 renderer/事件输入先检查再进入业务类型，不用 Dynamic 数量作为真实性证明。任务集合按 typed key/value 关系处理，不再从异构 pair 断言出 Task。开放 Respo 事件和 UI states 仍是明确边界。COS 仅用 Action 内置 verify，没有重复 CDN 脚本。

删除未被工作流引用的历史 quality 预算文件：其中仍记录旧 unsafe 额度和已迁移的定义，而当前源码的官方查询无 unsafe。现行全定义、公开定义、完整 strict 和原 11 项业务断言均保留；strict 同时要求 JSON passed 且无诊断，不用旧预算代替实际类型检查。

PR 预览按 PR 编号、运行编号和重试次数隔离，生产部署路径不变。`yarn dev` 先编译一次再启动 Vite；实时修改 Calcit 时另开终端运行 `calcit calcit.cirru js -w`，无需增加 concurrently。

COS 使用精确正式 tag v1.2.0，唯一上传验证为 `public-base-url` 内置 verify。安装器从 `deps.cirru` 读取版本；串行队列、job 15 分钟/上传 10 分钟限时、原业务测试、字体、生产与 PR/run/attempt 前缀和服务器路径不变。

### Local storage compatibility

启动时校验并迁移旧 Map / 新 Struct 存档，恢复 Store、Task 和 Option 的运行时类型。旧任务的空 created-time 迁移为 0，空完成/归档时间迁移为 Option :none。损坏或字段类型不符的存档会显示错误并暂停自动保存，避免覆盖原数据；修复存档后重新加载即可恢复保存。

本地编译器也必须使用发布的配对版本，不混用未发布的编译器与 npm 运行库。升级依赖仍须检查浏览器启动与存储恢复，不能只看静态门禁。

`yarn compile` 直接调用固定 CLI，依赖安装器和完整 strict 负责工具链核验；移除本地 compile wrapper 与自动删除 js-out 的重复机制。使用前确保 PATH 中的 calcit 与 deps.cirru 一致，生成物不提交 Git。

Respo 事件回调按实际 Map 契约读取；多任务排序按 Task Struct 字段读取。回归测试覆盖真实事件转换和多个任务的渲染。

Vite 已移除对 @calcit/procs 的本地 js-cast 覆盖，直接使用正式运行库与正式 Respo DOM adapter；不改 DOM 原型或放宽宿主检查。

### License

MIT
