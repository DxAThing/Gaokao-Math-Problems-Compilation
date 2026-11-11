# 高考数学题库

本仓库收录历年高考数学试卷的 LaTeX 源码、分类索引、题图及 TikZ 重绘图源，用于构建试题版（`Compilation.pdf`）与答案解析版（`Compilation-answer.pdf`）。

成品 PDF 可直接从 [Releases](https://github.com/DxAThing/Gaokao-Math-Problems-Compilation/releases) 下载，也可按文末说明在本地编译。

## 当前版本：题图矢量化与排版升级（2026-11-11）

全书共收录 **777 份试卷、16,321 道试题**（试题版 3,003 页，答案解析版 7,392 页）。相比 [20261004](https://github.com/DxAThing/Gaokao-Math-Problems-Compilation/releases/tag/20261004) 版本，本次更新主要集中在题图矢量化、排版升级与内容校订：

- **题图全面矢量化**：原生 TikZ 图源由 320 份扩充至 3,599 份，正文中的数学几何图、函数图、框图与统计图已全部接入矢量绘制，仅保留 13 处实景、实物或装饰类位图。
- **图表样式与题注统一**：全书统一采用“第xx题图x”题注格式；新增统计图、尺寸标注等共享模板，并集中修正了图形标签、虚实线及多图组合排版。
- **解析与题面校订**：增补十份试卷的完整答案与解析，并对多处题干、选项、答案及数学符号进行了订正。

由于本次集中转写了三千余幅题图，部分图形目前还比较简陋，或在比例、标注位置等细节上仍有不足，非常欢迎大家在阅读和使用过程中通过 Issue 或 Pull Request 反馈问题、提供改进建议。

## 仓库结构

- `content/`：各年份与卷别的试题及解析正文
- `index/`：试卷与题目索引
- `img_repaint/`、`templates/`、`statistical-charts.tex`：TikZ 矢量题图源码与共享绘图模板
- `img/`：保留的实景、实物等必要位图素材
- `tools/`：编译直接读取的图片尺寸与布局表
- `Compilation.tex`、`Compilation-answer.tex`、`styles.tex`：主文档与全局样式配置

## 试题来源与致谢

本仓库中**大部分试题的源头来自 [deekur/gaokaomath](https://github.com/deekur/gaokaomath)**，在此向原仓库作者及贡献者表示感谢。

本项目在其基础上进行了重新整理、排版、校订、索引、题图处理、重绘以及答案整理等工作。对于来源于其他资料或由本项目进一步整理、补充的内容，其权利仍归相应权利人所有。

## 【特别提醒】许可与转载要求

除另有注明的第三方内容外，本仓库中由本项目整理、编写和制作的内容采用 **Creative Commons Attribution-ShareAlike 4.0 International（CC BY-SA 4.0）** 协议发布：

<https://creativecommons.org/licenses/by-sa/4.0/>

这意味着你可以复制、转载、分发、修改和再创作本仓库中的受许可内容，也可以将其用于商业用途，但必须遵守以下要求：

1. **署名（BY）**：转载、分发或改编时必须给予适当署名，保留本项目名称及仓库链接，并保留适用的原作者、贡献者和来源信息。
2. **注明修改**：如果对内容进行了修改、整理、删减或再创作，应明确说明内容已经被修改。
3. **相同方式共享（SA）**：如果发布基于本仓库内容制作的改编或衍生作品，必须以 **CC BY-SA 4.0** 或该协议允许的兼容许可继续发布，不得将衍生作品改为禁止他人继续共享和改编的封闭许可。
4. **保留上游来源**：对于来源于 [deekur/gaokaomath](https://github.com/deekur/gaokaomath) 的试题或整理成果，转载或改编时应同时保留该上游仓库的来源说明及链接。
5. **不得附加额外限制**：不得通过法律条款或技术措施，额外限制其他人在 CC BY-SA 4.0 已允许范围内使用这些内容。

简而言之：**可以转载、修改、再发布，甚至商业使用，但必须署名；改编后继续公开发布时，也必须允许后来者按照相同规则继续使用。**

完整许可说明见仓库根目录的 [`LICENSE`](./LICENSE) 文件及 Creative Commons 官方页面。

## 构建

环境需要：

- TeX Live（含 XeLaTeX、latexmk 及 `styles.tex` 引用的宏包）
- `SimSun`、`SimHei`、`KaiTi`、`Times New Roman` 字体
- `STIX` 字体（用于希腊字母字体）

生成：

```bash
make pdf
```

- `Compilation.pdf`
- `Compilation-answer.pdf`

清理构建产物：

```bash
make clean
```
