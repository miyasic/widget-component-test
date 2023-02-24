## classでの切り分けとmethodでの切り分け
classで切り分けた場合は切り分けたclass自体がwidgetTreeに反映される。今回でいうとNewWidgetが含まれている。
また、buildメソッドが走り直した時にconstをつけたclassは使いまわされるが、methodは毎回走ってしまう。

<img src="https://user-images.githubusercontent.com/62228968/221133910-35cc3744-e04c-4f8d-b450-354c5f099560.jpg" width="400"><img src="https://user-images.githubusercontent.com/62228968/221133903-eb1280e2-5d20-404e-9813-4afd50aabefb.jpg" width="400">



## WidgetとInstance

StatefulWidgetのsetStateを呼んだ時にWidgetのInstanceが再生成されるかどうかの確認


|  Widget  |  Instance再生成  |
| ---- | ---- |
|  親Widget  |  しない  |
|  親State  |  しない  |
|  子Widget const付き  |  しない  |
|  子Widget const無し  |  する  |

https://user-images.githubusercontent.com/62228968/221133069-8118d83f-6c34-42b1-917a-d5c71fb304f1.mov

