#!/system/bin/sh

ui_print "==============================="
ui_print " HomeButton Disable Module"
ui_print " powered by kiyotti"
ui_print "==============================="

SRC="/system/usr/keylayout/mtk-kpd.kl"
DSTDIR="$MODPATH/system/usr/keylayout"
DST="$DSTDIR/mtk-kpd.kl"
BAK="$MODPATH/mtk-kpd.kl.backup"

# 存在確認
if [ ! -f "$SRC" ]; then
    abort "mtk-kpd.kl が見つかりません"
fi

# フォルダ作成
mkdir -p "$DSTDIR"

# 初回バックアップ
cp "$SRC" "$BAK"

# overlay用生成
cp "$BAK" "$DST"

# key 102 HOME を探す
if grep -Eq '^key[[:space:]]+102[[:space:]]+HOME([[:space:]].*)?$' "$DST"; then

    # HOMEキー行を削除（MTK安全版）
    sed -Ei \
    '/^key[[:space:]]+102[[:space:]]+HOME([[:space:]].*)?$/d' \
    "$DST"

    echo "" >> "$DST"
    echo "# Home key removed by kiyotti" >> "$DST"

    ui_print "HOME key disabled"

else

    ui_print "--------------------------------"
    ui_print "key 102 HOME が見つかりません"
    ui_print "開発者に問い合わせてください"
    ui_print "--------------------------------"

fi

set_perm_recursive "$MODPATH" 0 0 0755 0644