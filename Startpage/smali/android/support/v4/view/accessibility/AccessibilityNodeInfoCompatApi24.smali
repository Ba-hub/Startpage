.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi24;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompatApi24.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActionSetProgress()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    return-object v0
.end method

.method public static getDrawingOrder(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getDrawingOrder()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isImportantForAccessibility(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isImportantForAccessibility()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static setDrawingOrder(Ljava/lang/Object;I)V
    .locals 4

    .prologue
    .line 34
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDrawingOrder(I)V

    .line 35
    return-void
.end method

.method public static setImportantForAccessibility(Ljava/lang/Object;Z)V
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setImportantForAccessibility(Z)V

    .line 44
    return-void
.end method
