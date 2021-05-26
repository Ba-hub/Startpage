.class Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi24;
.super Ljava/lang/Object;
.source "AccessibilityWindowInfoCompatApi24.java"


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

.method public static getAnchor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getAnchor()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getTitle(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
