# 高考数学题库

本仓库收录 1952–2026 年历年高考数学真题的 LaTeX 源码、分类索引与配套题图，目前共 **777 份试卷、16,321 道试题**，可分别编译为试题版（`Compilation.pdf`）与答案解析版（`Compilation-answer.pdf`）。

正文中的几何、函数、框图与统计图已基本重绘为 TikZ 矢量图（共 3,599 份图源），仅 13 处实景、实物或装饰类插图保留位图；全书试题均配有答案与解析。

由于题量与图量较大，其中三千余幅矢量图是集中转写完成的，部分图形在比例、细节或标注位置上仍不够理想；早期试卷中也偶有原卷印刷错漏或条件残缺之处。这些问题会在发现后陆续订正。如果在阅读、做题或排版时遇到错字、存疑解答或图形瑕疵，欢迎通过 Issue 或 Pull Request 告知，注明年份、卷别与题号即可。

## 获取成品 PDF

如果不打算在本地配置编译环境，可以直接前往 [Releases](https://github.com/DxAThing/Gaokao-Math-Problems-Compilation/releases) 下载成品 PDF：

- 当前最新公开的成品 PDF 为 **`20261120`**，随 Release 附带试题版（`Compilation.pdf`）与答案解析版（`Compilation-answer.pdf`）。
- 各次更新说明与历史版本均见 Releases 页面；如需自行构建或获取后续源码修订，可拉取最新源码后按下方步骤本地编译。

## 本地构建

编译环境需要：

- TeX Live（含 XeLaTeX、latexmk 及 `styles.tex` 引用的宏包）
- `SimSun`、`SimHei`、`KaiTi`、`Times New Roman` 字体
- `STIX` 字体（用于希腊字母）

在仓库根目录执行：

```bash
make pdf
```

生成的 PDF 文件：

- `Compilation.pdf`（试题版）
- `Compilation-answer.pdf`（答案解析版）

清理构建产物：

```bash
make clean
```

## 仓库目录

- `content/`：按年份与卷别整理的试题及解析正文
- `index/`：试卷与题目索引
- `img_repaint/`、`templates/`、`statistical-charts.tex`：TikZ 矢量题图源码与共享绘图模板
- `img/`：保留的实景、实物等位图素材
- `tools/`：编译时直接读取的图片尺寸与布局表
- `Compilation.tex`、`Compilation-answer.tex`、`styles.tex`：主文档与全局样式配置

## 试题来源与致谢

本仓库中**大部分试题的源头来自 [deekur/gaokaomath](https://github.com/deekur/gaokaomath)**，谨向原仓库作者及各位贡献者致谢。

本项目在其基础上进行了重新整理、排版、校订、索引、题图重绘以及答案解析整理等工作。来源于其他资料或由本项目进一步整理、补充的内容，其权利仍归相应权利人所有。

## 【特别提醒】许可与转载要求

除另有注明的第三方内容外，本仓库中由本项目整理、编写和制作的内容采用 **Creative Commons Attribution-ShareAlike 4.0 International（CC BY-SA 4.0）** 协议发布：

<https://creativecommons.org/licenses/by-sa/4.0/>

你可以复制、转载、分发、修改和再创作本仓库中的受许可内容，也可以将其用于商业用途，但必须遵守以下要求：

1. **署名（BY）**：转载、分发或改编时必须给予适当署名，保留本项目名称及仓库链接，并保留适用的原作者、贡献者和来源信息。
2. **注明修改**：如果对内容进行了修改、整理、删减或再创作，应明确说明内容已经被修改。
3. **相同方式共享（SA）**：如果发布基于本仓库内容制作的改编或衍生作品，必须以 **CC BY-SA 4.0** 或该协议允许的兼容许可继续发布，不得将衍生作品改为禁止他人继续共享和改编的封闭许可。
4. **保留上游来源**：对于来源于 [deekur/gaokaomath](https://github.com/deekur/gaokaomath) 的试题或整理成果，转载或改编时应同时保留该上游仓库的来源说明及链接。
5. **不得附加额外限制**：不得通过法律条款或技术措施，额外限制其他人在 CC BY-SA 4.0 已允许范围内使用这些内容。

简而言之：**可以转载、修改、再发布，甚至商业使用，但必须署名；改编后继续公开发布时，也必须允许后来者按照相同规则继续使用。**

完整许可说明见仓库根目录的 [`LICENSE`](./LICENSE) 文件及 Creative Commons 官方页面。
