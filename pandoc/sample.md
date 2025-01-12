---
title: 使用例
subtitle: サブタイトル
date: 2022-04-03
author: john doo
---

# 概要

概要の本文

## 見出し2

見出し2の本文


# PlantUML

PlantUMLの例を @fig:uml に示します。

```{#fig:uml .plantuml caption="クラス図"}
サブクラス -|> 親クラス
```

# ditaa

ditaaの例を @fig:ditaa に示します。

```{#fig:ditaa .ditaa caption="ditaa"}

+------+      +------+
|      |      |      |
| あい +----->| うえ |
|      |      |      |
+------+      +------+

```

# コード

ハローを @lst:hello に示す。


```{#lst:hello .cpp caption="ハローワールド"}
#include <iostream>

int main() { //ハロー
	std::cout << "hello world" << std::endl;
	return 0;
}
```

# 表

@tbl:table のサンプル


| No | 項目   |
|----|--------|
| 1  | りんご |
| 2  | みかん |
: フルーツ {#tbl:table}

# 結論

おしまい
