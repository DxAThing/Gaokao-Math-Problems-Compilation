# 高考数学题库 PDF

仓库已包含生成题目版和答案版 PDF 所需的全部项目文件；`source/` 中的原卷 PDF 仅用于内容核对，不参与成品构建。

## 构建

环境需要：

- TeX Live（含 XeLaTeX、latexmk 及 `styles.tex` 引用的宏包）
- `SimSun`、`SimHei`、`KaiTi`、`Times New Roman` 字体

无需 OCR、PDF 裁切工具、仓库外图片目录或专用转换脚本。

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
