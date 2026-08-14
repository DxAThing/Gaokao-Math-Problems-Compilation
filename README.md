# 高考数学题库

`main` 是公开发布分支，只包含生成题目版和答案版 PDF 所需的 LaTeX 源文件、索引、题图、重绘图源和布局表。

## 构建

环境需要：

- TeX Live（含 XeLaTeX、latexmk 及 `styles.tex` 引用的宏包）
- `SimSun`、`SimHei`、`KaiTi`、`Times New Roman` 字体

```bash
make pdf
```

生成：

- `Compilation.pdf`
- `Compilation-answer.pdf`

清理构建产物：

```bash
make clean
```

原卷 PDF、来源记录、审核工具和队列状态保存在独立私有仓库
[`DxAThing/Gaokao-Math-Develop`](https://github.com/DxAThing/Gaokao-Math-Develop)，
不会推送到公开仓库。
