#### [引用元：<font color="Steelblue">haskell超入門](http://qiita.com/7shi/items/145f1234f8ec2af923ef)

## 1.再帰について  
**作り方のコツ**  
①基底部を定義  
②具体例に当てはめて一般化する  
まず基底部を定義する。自然数を指定するタイプでは値が減少しながら再帰を繰り返すのが定石で、これ以上減少できない最小値が基底部となる。

**再帰部**  
```
fact n = n * fact (n - 1)
```  
このように基底部と再帰部は順を追って別々に作ることになるため、パターンマッチで定義を分離させる書き方と相性が良い。

※ 数学の問題であれば得られた式を数学的帰納法で証明することが求められるが、今回はプログラミングの練習が目的なので、いくつか具体例で動作確認して済ませる。

**確認のコツ**  
一旦書き上げたプログラムを確認するコツ。既存のコードを読むときにも使える。

再帰の流れは追わずに、結果が信頼できるものと見なして具体例で考える。
```
fact n = n * fact (n - 1)  
fact 5 = 5 * fact 4
```  
fact 4は定義より4! = 24が返されると考える。
5 * 24 = 120

### 2. パターンマッチとガードの使い分けについて  
①まずパターンマッチで書けないか試す。  
②範囲指定（例: n < 5）など式が必要でパターンマッチが使えない場合、ガードを使う。  
パターンマッチで大まかに振り分けた後、ガードで細かく振り分けるというように、併用するケースもある。  
C言語などをご存知の方はおおまかに次のように考えるとイメージしやすい。

<font color="DeepPink">パターンマッチ</font>は switch - case の機能強化版  
<font color="DeepPink">ガード</font>は if - else if の羅列

### 3.リストの慣習について
リストの順番を表す場合は
```
(x:xs)
```
と記述する。  
ｘ先頭の要素を指し、xsは先頭の後ろについているその他の要素を指している。  
xsはxの複数形という意味。  
規則ではなく慣習的にこう書かれることが多い。