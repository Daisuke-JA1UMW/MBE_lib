REM FusionPCB, PCBgogo ガーバー拡張子変換バッチ
REM 同一ファイル名のファイルを1個ドロップすると動きます。

CD %~d1%~p1
REM ファイル名抽出
SET NAME=%~n1

REM ディレクトリ作成
mkdir %NAME%_gerber

REM トップシルク
MOVE %NAME%.PLC %NAME%_gerber\%NAME%.GTO
REM トップレジスト
MOVE %NAME%.STC %NAME%_gerber\%NAME%.GTS
REM トップパターン
MOVE %NAME%.CMP %NAME%_gerber\%NAME%.GTL
REM ボトムパターン
MOVE %NAME%.SOL %NAME%_gerber\%NAME%.GBL
REM ボトムレジスト
MOVE %NAME%.STS %NAME%_gerber\%NAME%.GBS
REM ボトムシルク
MOVE %NAME%.PLS %NAME%_gerber\%NAME%.GBO
REM アウトライン
MOVE %NAME%.DIM %NAME%_gerber\%NAME%.GML
REM ドリル
MOVE %NAME%.DRD %NAME%_gerber\%NAME%.TXT
MOVE %NAME%.DRI %NAME%(List).TXT
REM 変換完了.
pause

