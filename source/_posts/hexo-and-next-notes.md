title: Hexo & Next Nodes
date: 2017-04-07 18:10:00
comments: true
categories: hexo
tags: [Hexo, Next, Blog]
---

{% fi /picture/6.jpg,, %}

# Hexo

<img src="/picture/1.jpg" alt="狗狗">

{% note warning %} 目录结构 {% endnote %}

<span class="label label-warning">0.4.5</span>

<span class="label r label-success">0.4.5</span>

<a href="#" class="label label-success">0.4.5</a>

<embed src='http://player.youku.com/player.php/sid/XMjY5NTgzMTE0NA==/v.swf' allowFullScreen='true' quality='high' width='100%' height='400' align='middle' allowScriptAccess='always' type='application/x-shockwave-flash'></embed>

```
.
├── node_modules #模块包文件夹，删除后使用npm install命令读取package.json重新安装
├── public       #静态页面文件夹，hexo generate命令生成的文件都在这里
├── scaffolds    #模版文件夹，对应命令中布局[layout]，不指定默认为default_layout
|   ├── draft.md #草稿模版
|   ├── page.md  #页面模版
|   └── post.md  #文章模版，_config.yml中的default_layout是post
├── source       #资源文件夹，解析后输出到public，CNAME和README.md可放在这里
|   ├── _drafts  #草稿
|   └── _posts   #文章
├── themes       #主题文件夹
├── └── next     #next主题
├── .gitignore   #Hexo Git忽略配置文件(可删除)
├── _config.yml  #站点配置文件
├── db.json      #静态常量数据库，hexo server生成并使用。
├── debug.log    #调试模式启动后生成的日志文件。
└── package.json #模块包配置文件
```

## 常用命令

`[]` 可选参数
`<>` 必须参数
`command` 代表任意有效命令
`[-c, --command]` 参数的简写和全写形式

<!-- more -->

{% fi /picture/1.jpg, 图片Alt, 图片标题 %}

### 基本命令

NPM命令这个文章写的很全[npm 常用命令详解](http://www.cnblogs.com/PeunZhang/p/5553574.html)

```
#安装模块
npm install -g hexo-cli
npm install                     #安装依赖
npm i                           #安装简写

#升级模块
npm update -g hexo-cli

#卸载模块
npm uninstall -g hexo-cli
npm <remove, rm, r, un, unlink> #卸载简写和别名

#显示模块详情
npm show hexo-cli

hexo [v, -v, --version]         #查看Hexo版本
hexo [command] [-h, --help]     #查看帮助
```

### 全局命令

`<command>`可以是任何有效命令

```
hexo <command> [--config] <custom.yml> #指定配置文件，而不是使用默认_config.yml
hexo <command> [--cwd] </path/to/cwd>  #自定义当前工作目录路径
hexo <command> [--draft]               #显示草稿，草稿位于source/_drafts文件夹
hexo <command> [--debug]               #调试模式，显示所有详细信息到终端。
hexo <command> [--safe]                #安全模式，禁用所有插件和脚本。
hexo <command> [--silent]              #精简模式，隐藏终端输出信息。
```

### 初始化

新建一个网站。如果没有设置`folder`，默认在当前文件夹建立网站。

```
hexo init                #在当前目录初始化
hexo i                   #简写形式
hexo init [folder]       #在指定目录初始化
hexo init [--no-clone]   #复制文件,而不是从GitHub克隆
hexo init [--no-install] #跳过npm安装
```

### 清理
```
hexo clean #清除db.json数据内容和public文件夹
```

### 发布

```
hexo publish [layout] <filename> #草稿名称,如"hello-world"
hexo p [layout] <filename> #简写
```

### 生成

```
hexo generate #生成静态文件
hexo g #简写
hexo generate [-d, --deploy] #文件生成后立即部署
hexo generate [-w, --watch] #监视文件变动
```
### 部署

```
hexo deploy #部署到代码托管平台
hexo d #简写
```

### 渲染文件

```
hexo render <file1> [file2] ... #至少有一个或多个文件
hexo render <file1> [file2] [-o, --output] #设置输出路径
```

### 显示资料

资料类型type可以是页面`page`、文章`post`、博客全部结构`route`、标签`tag`或分类`category`

```
hexo list <type> #列出网站资料
hexo l #简写
```

### 迁移

从其他博客系统[迁移内容](https://hexo.io/zh-cn/docs/migration.html)

```
hexo migrate <type>
hexo m #简写
```

### 服务器
```
hexo server #启动服务器预览
hexo s #简写
hexo server [-i, --ip] <ip> #重写服务器默认IP
hexo server [-l, --log] [format] #启用日志
hexo server [-o, --open] #启动后使用默认浏览器打开站点
hexo server [-p, --port] <port> #修改端口号
hexo server [-s, --static] #启用服务静态预览
```

### 新建内容

`[layout]`可以是文章`post`、页面`page`或草稿`draft`

```
hexo new [layout] <title> #如果标题包含空格，请使用双引号括起来"My Title"
hexo n [layout] <title> #简写
hexo new [layout] <title> [-p, --path] #自定义的post路径
hexo new [layout] <title> [-r, --replace] #如果存在则替换当前post
hexo new [layout] <title> [-s, --slug] #自定义的postURL
```

### 文章摘要

`<!--more-->`

### 文章中插入图片

使用markdown写文章，插入图片的格式为`![](链接地址)`，这里要说的是链接地址怎么写。对于hexo，使用本地路径：在/source目录下新建一个img文件夹，将图片放入该文件夹下，插入图片时链接即为/img/图片名称。

### 配置网站

# Next 主题

## 安装 Next

## 优化主题

### 优化代码块风格(`单行`)

```css
code {
  padding: 2px 4px;
  word-wrap: break-word;
  color: #c7254e;
  background: #F9F2F4;
}
```

### 优化超链接风格
在`hexo\themes\next\source\css\_common\components\post\post.styl`新增CSS样式

```css
.post-body a {
  color: #009a61;
}
```


