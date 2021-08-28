#!/system/bin/sh
MODDIR=${0%/*}
if [ $1 != '' ]; then
    MODDIR='./'
fi

cp /system/etc/fonts.xml $MODDIR/system/etc

cp /system/product/etc/fonts_customization.xml $MODDIR/system/product/etc

sed -i 's/Roboto-Regular/LdgEn/g' $MODDIR/system/etc/fonts.xml

sed -i ':l; N; s@    <family lang="ja">\n        <font weight="400" style="normal" index="0" postScriptName="NotoSansCJKjp-Regular">\n            NotoSansCJK-Regular.ttc\n        </font>\n        <font weight="400" style="normal" index="0" fallbackFor="serif"\n              postScriptName="NotoSerifCJKjp-Regular">NotoSerifCJK-Regular.ttc\n        </font>\n    </family>@    <family lang="ja">\n        <font weight="400" style="normal" index="0" postScriptName="GenJyuuGothic-Regular">\n            GenJyuuGothic-Regular.ttf\n        </font>\n        <font weight="400" style="normal" index="0" fallbackFor="serif"\n              postScriptName="GenJyuuGothic-Regular">GenJyuuGothic-Regular.ttf\n        </font>\n    </family>@g; b l;' $MODDIR/system/etc/fonts.xml

sed -i 's/GoogleSans-Regular/Ubuntu-Medium/g' $MODDIR/system/product/etc/fonts_customization.xml
