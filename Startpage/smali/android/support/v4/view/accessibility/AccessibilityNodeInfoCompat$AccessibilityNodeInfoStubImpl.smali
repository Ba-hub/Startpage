.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoStubImpl;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"

# interfaces
.implements Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoStubImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 873
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAction(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 902
    return-void
.end method

.method public addAction(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 907
    return-void
.end method

.method public addChild(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 927
    return-void
.end method

.method public addChild(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 932
    return-void
.end method

.method public canOpenPopup(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1406
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 946
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public findAccessibilityNodeInfosByViewId(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1415
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public findFocus(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1186
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const/4 v3, 0x0

    move-object v0, v3

    return-object v0
.end method

.method public focusSearch(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1191
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const/4 v3, 0x0

    move-object v0, v3

    return-object v0
.end method

.method public getAccessibilityActionId(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 916
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getAccessibilityActionLabel(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 921
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public getActionContextClick()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1548
    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public getActionList(Ljava/lang/Object;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1258
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public getActionScrollDown()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1533
    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public getActionScrollLeft()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1538
    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public getActionScrollRight()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1543
    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public getActionScrollToPosition()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1503
    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public getActionScrollUp()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1528
    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public getActionSetProgress()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1508
    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public getActionShowOnScreen()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1523
    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public getActions(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 951
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 957
    return-void
.end method

.method public getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 962
    return-void
.end method

.method public getChild(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 966
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const/4 v3, 0x0

    move-object v0, v3

    return-object v0
.end method

.method public getChildCount(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 971
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 976
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public getCollectionInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1231
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public getCollectionInfoColumnCount(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 1274
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getCollectionInfoRowCount(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 1279
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getCollectionInfoSelectionMode(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 1553
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getCollectionItemColumnIndex(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 1301
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getCollectionItemColumnSpan(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 1306
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getCollectionItemInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1240
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public getCollectionItemRowIndex(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 1311
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getCollectionItemRowSpan(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 1316
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 981
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public getDrawingOrder(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 1558
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getError(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 1375
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public getExtras(Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 1420
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/os/Bundle;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v0, v2

    return-object v0
.end method

.method public getInputType(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 1425
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getLabelFor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1388
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public getLabeledBy(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1401
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public getLiveRegion(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 1221
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getMaxTextLength(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 1438
    move-object v0, p0

    move-object v1, p1

    const/4 v2, -0x1

    move v0, v2

    return v0
.end method

.method public getMovementGranularities(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 1081
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getPackageName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 986
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public getParent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 991
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public getRangeInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1249
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public getRoleDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 1494
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public getText(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 996
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public getTextSelectionEnd(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 1452
    move-object v0, p0

    move-object v1, p1

    const/4 v2, -0x1

    move v0, v2

    return v0
.end method

.method public getTextSelectionStart(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 1447
    move-object v0, p0

    move-object v1, p1

    const/4 v2, -0x1

    move v0, v2

    return v0
.end method

.method public getTraversalAfter(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1349
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public getTraversalBefore(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1336
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public getViewIdResourceName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1211
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public getWindow(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1457
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public getWindowId(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 1001
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public isAccessibilityFocused(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1041
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public isCheckable(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1006
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public isChecked(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1011
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public isClickable(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1016
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public isCollectionInfoHierarchical(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1284
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public isCollectionItemHeading(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1321
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public isCollectionItemSelected(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1326
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public isContentInvalid(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1366
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public isContextClickable(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1513
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public isDismissable(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1462
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public isEditable(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1471
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public isEnabled(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1021
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public isFocusable(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1026
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public isFocused(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1031
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public isImportantForAccessibility(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1567
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x1

    move v0, v2

    return v0
.end method

.method public isLongClickable(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1046
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public isMultiLine(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1480
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public isPassword(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1051
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public isScrollable(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1056
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public isSelected(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1061
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public isVisibleToUser(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1036
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public newAccessibilityAction(ILjava/lang/CharSequence;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 876
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    const/4 v3, 0x0

    move-object v0, v3

    return-object v0
.end method

.method public obtain()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 881
    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public obtain(Landroid/view/View;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 886
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public obtain(Landroid/view/View;I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 891
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const/4 v3, 0x0

    move-object v0, v3

    return-object v0
.end method

.method public obtain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 896
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public obtainCollectionInfo(IIZ)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 1269
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    const/4 v4, 0x0

    move-object v0, v4

    return-object v0
.end method

.method public obtainCollectionInfo(IIZI)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 1264
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    const/4 v5, 0x0

    move-object v0, v5

    return-object v0
.end method

.method public obtainCollectionItemInfo(IIIIZ)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 1296
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    const/4 v6, 0x0

    move-object v0, v6

    return-object v0
.end method

.method public obtainCollectionItemInfo(IIIIZZ)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 1290
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    const/4 v7, 0x0

    move-object v0, v7

    return-object v0
.end method

.method public obtainRangeInfo(IFFF)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 1331
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    const/4 v5, 0x0

    move-object v0, v5

    return-object v0
.end method

.method public performAction(Ljava/lang/Object;I)Z
    .locals 4

    .prologue
    .line 1066
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const/4 v3, 0x0

    move v0, v3

    return v0
.end method

.method public performAction(Ljava/lang/Object;ILandroid/os/Bundle;)Z
    .locals 5

    .prologue
    .line 1071
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    const/4 v4, 0x0

    move v0, v4

    return v0
.end method

.method public recycle(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1202
    return-void
.end method

.method public refresh(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1489
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public removeAction(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 911
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v3, 0x0

    move v0, v3

    return v0
.end method

.method public removeChild(Ljava/lang/Object;Landroid/view/View;)Z
    .locals 4

    .prologue
    .line 936
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v3, 0x0

    move v0, v3

    return v0
.end method

.method public removeChild(Ljava/lang/Object;Landroid/view/View;I)Z
    .locals 5

    .prologue
    .line 941
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    const/4 v4, 0x0

    move v0, v4

    return v0
.end method

.method public setAccessibilityFocused(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 1142
    return-void
.end method

.method public setBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 1087
    return-void
.end method

.method public setBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 1092
    return-void
.end method

.method public setCanOpenPopup(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 1411
    return-void
.end method

.method public setCheckable(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 1097
    return-void
.end method

.method public setChecked(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 1102
    return-void
.end method

.method public setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1107
    return-void
.end method

.method public setClickable(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 1112
    return-void
.end method

.method public setCollectionInfo(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1236
    return-void
.end method

.method public setCollectionItemInfo(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1245
    return-void
.end method

.method public setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1117
    return-void
.end method

.method public setContentInvalid(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 1362
    return-void
.end method

.method public setContextClickable(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 1519
    return-void
.end method

.method public setDismissable(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 1467
    return-void
.end method

.method public setDrawingOrder(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1563
    return-void
.end method

.method public setEditable(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 1476
    return-void
.end method

.method public setEnabled(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 1122
    return-void
.end method

.method public setError(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1371
    return-void
.end method

.method public setFocusable(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 1127
    return-void
.end method

.method public setFocused(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 1132
    return-void
.end method

.method public setImportantForAccessibility(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 1572
    return-void
.end method

.method public setInputType(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1430
    return-void
.end method

.method public setLabelFor(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1380
    return-void
.end method

.method public setLabelFor(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 1384
    return-void
.end method

.method public setLabeledBy(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1393
    return-void
.end method

.method public setLabeledBy(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 1397
    return-void
.end method

.method public setLiveRegion(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1227
    return-void
.end method

.method public setLongClickable(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 1147
    return-void
.end method

.method public setMaxTextLength(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1434
    return-void
.end method

.method public setMovementGranularities(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1077
    return-void
.end method

.method public setMultiLine(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 1485
    return-void
.end method

.method public setPackageName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1152
    return-void
.end method

.method public setParent(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1157
    return-void
.end method

.method public setParent(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 1207
    return-void
.end method

.method public setPassword(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 1162
    return-void
.end method

.method public setRangeInfo(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1254
    return-void
.end method

.method public setRoleDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1499
    return-void
.end method

.method public setScrollable(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 1167
    return-void
.end method

.method public setSelected(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 1172
    return-void
.end method

.method public setSource(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1177
    return-void
.end method

.method public setSource(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 1182
    return-void
.end method

.method public setText(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1197
    return-void
.end method

.method public setTextSelection(Ljava/lang/Object;II)V
    .locals 0

    .prologue
    .line 1443
    return-void
.end method

.method public setTraversalAfter(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1354
    return-void
.end method

.method public setTraversalAfter(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 1358
    return-void
.end method

.method public setTraversalBefore(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1341
    return-void
.end method

.method public setTraversalBefore(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 1345
    return-void
.end method

.method public setViewIdResourceName(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1217
    return-void
.end method

.method public setVisibleToUser(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 1137
    return-void
.end method
