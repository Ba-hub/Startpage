.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoKitKatImpl;
.super Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr2Impl;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoKitKatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 1962
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr2Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public canOpenPopup(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 2087
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->canOpenPopup(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public getCollectionInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1975
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->getCollectionInfo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getCollectionInfoColumnCount(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 2012
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionInfo;->getColumnCount(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getCollectionInfoRowCount(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 2017
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionInfo;->getRowCount(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getCollectionItemColumnIndex(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 2042
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionItemInfo;->getColumnIndex(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getCollectionItemColumnSpan(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 2047
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionItemInfo;->getColumnSpan(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getCollectionItemInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 2027
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->getCollectionItemInfo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getCollectionItemRowIndex(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 2052
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionItemInfo;->getRowIndex(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getCollectionItemRowSpan(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 2057
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionItemInfo;->getRowSpan(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getExtras(Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 2097
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->getExtras(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getInputType(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 2102
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->getInputType(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getLiveRegion(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 1965
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->getLiveRegion(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getRangeInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 2032
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->getRangeInfo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getRoleDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 2132
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->getRoleDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public isCollectionInfoHierarchical(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 2022
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionInfo;->isHierarchical(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public isCollectionItemHeading(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 2062
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionItemInfo;->isHeading(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public isContentInvalid(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 2082
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->isContentInvalid(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public isDismissable(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 2112
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->isDismissable(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public isMultiLine(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 2122
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->isMultiLine(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public obtainCollectionInfo(IIZ)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 1992
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, v1

    move v5, v2

    move v6, v3

    invoke-static {v4, v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->obtainCollectionInfo(IIZ)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public obtainCollectionInfo(IIZI)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 1986
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, v1

    move v6, v2

    move v7, v3

    move v8, v4

    invoke-static {v5, v6, v7, v8}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->obtainCollectionInfo(IIZI)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method public obtainCollectionItemInfo(IIIIZ)Ljava/lang/Object;
    .locals 11

    .prologue
    .line 2006
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    move v10, v5

    .line 2007
    invoke-static {v6, v7, v8, v9, v10}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->obtainCollectionItemInfo(IIIIZ)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    return-object v0
.end method

.method public obtainCollectionItemInfo(IIIIZZ)Ljava/lang/Object;
    .locals 12

    .prologue
    .line 1999
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    .line 2000
    invoke-static {v7, v8, v9, v10, v11}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->obtainCollectionItemInfo(IIIIZ)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    return-object v0
.end method

.method public obtainRangeInfo(IFFF)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 2072
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, v1

    move v6, v2

    move v7, v3

    move v8, v4

    invoke-static {v5, v6, v7, v8}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->obtainRangeInfo(IFFF)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method public setCanOpenPopup(Ljava/lang/Object;Z)V
    .locals 5

    .prologue
    .line 2092
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setCanOpenPopup(Ljava/lang/Object;Z)V

    .line 2093
    return-void
.end method

.method public setCollectionInfo(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 1980
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setCollectionInfo(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1981
    return-void
.end method

.method public setCollectionItemInfo(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 2067
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setCollectionItemInfo(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2068
    return-void
.end method

.method public setContentInvalid(Ljava/lang/Object;Z)V
    .locals 5

    .prologue
    .line 2077
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setContentInvalid(Ljava/lang/Object;Z)V

    .line 2078
    return-void
.end method

.method public setDismissable(Ljava/lang/Object;Z)V
    .locals 5

    .prologue
    .line 2117
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setDismissable(Ljava/lang/Object;Z)V

    .line 2118
    return-void
.end method

.method public setInputType(Ljava/lang/Object;I)V
    .locals 5

    .prologue
    .line 2107
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setInputType(Ljava/lang/Object;I)V

    .line 2108
    return-void
.end method

.method public setLiveRegion(Ljava/lang/Object;I)V
    .locals 5

    .prologue
    .line 1970
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setLiveRegion(Ljava/lang/Object;I)V

    .line 1971
    return-void
.end method

.method public setMultiLine(Ljava/lang/Object;Z)V
    .locals 5

    .prologue
    .line 2127
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setMultiLine(Ljava/lang/Object;Z)V

    .line 2128
    return-void
.end method

.method public setRangeInfo(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 2037
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setRangeInfo(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2038
    return-void
.end method

.method public setRoleDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 5

    .prologue
    .line 2137
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setRoleDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2138
    return-void
.end method
