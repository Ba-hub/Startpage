.class Landroid/support/v4/view/ViewCompat$HCViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HCViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 1152
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public combineMeasuredStates(II)I
    .locals 5

    .prologue
    .line 1315
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompatHC;->combineMeasuredStates(II)I

    move-result v3

    move v0, v3

    return v0
.end method

.method public getAlpha(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 1159
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatHC;->getAlpha(Landroid/view/View;)F

    move-result v2

    move v0, v2

    return v0
.end method

.method getFrameTime()J
    .locals 3

    .prologue
    .line 1155
    move-object v0, p0

    invoke-static {}, Landroid/support/v4/view/ViewCompatHC;->getFrameTime()J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public getLayerType(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 1167
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatHC;->getLayerType(Landroid/view/View;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getMatrix(Landroid/view/View;)Landroid/graphics/Matrix;
    .locals 3

    .prologue
    .line 1204
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatHC;->getMatrix(Landroid/view/View;)Landroid/graphics/Matrix;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getMeasuredHeightAndState(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 1187
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatHC;->getMeasuredHeightAndState(Landroid/view/View;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getMeasuredState(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 1191
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatHC;->getMeasuredState(Landroid/view/View;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getMeasuredWidthAndState(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 1183
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatHC;->getMeasuredWidthAndState(Landroid/view/View;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getPivotX(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 1292
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatHC;->getPivotX(Landroid/view/View;)F

    move-result v2

    move v0, v2

    return v0
.end method

.method public getPivotY(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 1296
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatHC;->getPivotY(Landroid/view/View;)F

    move-result v2

    move v0, v2

    return v0
.end method

.method public getRotation(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 1267
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatHC;->getRotation(Landroid/view/View;)F

    move-result v2

    move v0, v2

    return v0
.end method

.method public getRotationX(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 1272
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatHC;->getRotationX(Landroid/view/View;)F

    move-result v2

    move v0, v2

    return v0
.end method

.method public getRotationY(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 1277
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatHC;->getRotationY(Landroid/view/View;)F

    move-result v2

    move v0, v2

    return v0
.end method

.method public getScaleX(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 1282
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatHC;->getScaleX(Landroid/view/View;)F

    move-result v2

    move v0, v2

    return v0
.end method

.method public getScaleY(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 1287
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatHC;->getScaleY(Landroid/view/View;)F

    move-result v2

    move v0, v2

    return v0
.end method

.method public getTranslationX(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 1195
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatHC;->getTranslationX(Landroid/view/View;)F

    move-result v2

    move v0, v2

    return v0
.end method

.method public getTranslationY(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 1199
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatHC;->getTranslationY(Landroid/view/View;)F

    move-result v2

    move v0, v2

    return v0
.end method

.method public getX(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 1257
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatHC;->getX(Landroid/view/View;)F

    move-result v2

    move v0, v2

    return v0
.end method

.method public getY(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 1262
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatHC;->getY(Landroid/view/View;)F

    move-result v2

    move v0, v2

    return v0
.end method

.method public jumpDrawablesToCurrentState(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1300
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatHC;->jumpDrawablesToCurrentState(Landroid/view/View;)V

    .line 1301
    return-void
.end method

.method public offsetLeftAndRight(Landroid/view/View;I)V
    .locals 5

    .prologue
    .line 1320
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompatHC;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 1321
    return-void
.end method

.method public offsetTopAndBottom(Landroid/view/View;I)V
    .locals 5

    .prologue
    .line 1325
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompatHC;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1326
    return-void
.end method

.method public resolveSizeAndState(III)I
    .locals 7

    .prologue
    .line 1179
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, v1

    move v5, v2

    move v6, v3

    invoke-static {v4, v5, v6}, Landroid/support/v4/view/ViewCompatHC;->resolveSizeAndState(III)I

    move-result v4

    move v0, v4

    return v0
.end method

.method public setActivated(Landroid/view/View;Z)V
    .locals 5

    .prologue
    .line 1310
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompatHC;->setActivated(Landroid/view/View;Z)V

    .line 1311
    return-void
.end method

.method public setAlpha(Landroid/view/View;F)V
    .locals 5

    .prologue
    .line 1217
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompatHC;->setAlpha(Landroid/view/View;F)V

    .line 1218
    return-void
.end method

.method public setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 7

    .prologue
    .line 1173
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewCompat$HCViewCompatImpl;->getLayerType(Landroid/view/View;)I

    move-result v5

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/view/ViewCompat$HCViewCompatImpl;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 1175
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 1176
    return-void
.end method

.method public setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 7

    .prologue
    .line 1163
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v1

    move v5, v2

    move-object v6, v3

    invoke-static {v4, v5, v6}, Landroid/support/v4/view/ViewCompatHC;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 1164
    return-void
.end method

.method public setPivotX(Landroid/view/View;F)V
    .locals 5

    .prologue
    .line 1249
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompatHC;->setPivotX(Landroid/view/View;F)V

    .line 1250
    return-void
.end method

.method public setPivotY(Landroid/view/View;F)V
    .locals 5

    .prologue
    .line 1253
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompatHC;->setPivotY(Landroid/view/View;F)V

    .line 1254
    return-void
.end method

.method public setRotation(Landroid/view/View;F)V
    .locals 5

    .prologue
    .line 1229
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompatHC;->setRotation(Landroid/view/View;F)V

    .line 1230
    return-void
.end method

.method public setRotationX(Landroid/view/View;F)V
    .locals 5

    .prologue
    .line 1233
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompatHC;->setRotationX(Landroid/view/View;F)V

    .line 1234
    return-void
.end method

.method public setRotationY(Landroid/view/View;F)V
    .locals 5

    .prologue
    .line 1237
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompatHC;->setRotationY(Landroid/view/View;F)V

    .line 1238
    return-void
.end method

.method public setSaveFromParentEnabled(Landroid/view/View;Z)V
    .locals 5

    .prologue
    .line 1305
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompatHC;->setSaveFromParentEnabled(Landroid/view/View;Z)V

    .line 1306
    return-void
.end method

.method public setScaleX(Landroid/view/View;F)V
    .locals 5

    .prologue
    .line 1241
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompatHC;->setScaleX(Landroid/view/View;F)V

    .line 1242
    return-void
.end method

.method public setScaleY(Landroid/view/View;F)V
    .locals 5

    .prologue
    .line 1245
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompatHC;->setScaleY(Landroid/view/View;F)V

    .line 1246
    return-void
.end method

.method public setTranslationX(Landroid/view/View;F)V
    .locals 5

    .prologue
    .line 1209
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompatHC;->setTranslationX(Landroid/view/View;F)V

    .line 1210
    return-void
.end method

.method public setTranslationY(Landroid/view/View;F)V
    .locals 5

    .prologue
    .line 1213
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompatHC;->setTranslationY(Landroid/view/View;F)V

    .line 1214
    return-void
.end method

.method public setX(Landroid/view/View;F)V
    .locals 5

    .prologue
    .line 1221
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompatHC;->setX(Landroid/view/View;F)V

    .line 1222
    return-void
.end method

.method public setY(Landroid/view/View;F)V
    .locals 5

    .prologue
    .line 1225
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompatHC;->setY(Landroid/view/View;F)V

    .line 1226
    return-void
.end method
