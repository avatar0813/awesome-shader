# awesome Shader

## shader开发环境配置

### vscode Shader开发插件配置

- `Shader languages support for VS Code`: Shader语言支持
- `Shader Toy`: Shader实时预览
- `Live Preview`: HTML实时预览
- `es6-string-html`: Shader js预发高亮
- `glsl-canvas`: Shader格式化

### 遇到的一些问题记录

- 注释会影响执行 包括中文注释和英文注释
- 使用数字建议使用浮点数，整数值也建议带上小数点，如果 `1.`, 不写有些机器可能会执行失败
- `iTime`, `iResolution` 是插件`shader toy` 中定义的全局统一变量，具体看插件信息
