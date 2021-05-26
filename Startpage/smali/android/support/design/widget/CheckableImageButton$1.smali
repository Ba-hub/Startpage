.class Landroid/support/design/widget/CheckableImageButton$1;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "CheckableImageButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/CheckableImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/CheckableImageButton;


# direct methods
.method constructor <init>(Landroid/support/design/widget/CheckableImageButton;)V
    .locals 4

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/CheckableImageButton$1;->this$0:Landroid/support/design/widget/CheckableImageButton;

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 54
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/CheckableImageButton$1;->this$0:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {v4}, Landroid/support/design/widget/CheckableImageButton;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 55
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 61
    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCheckable(Z)V

    .line 62
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/CheckableImageButton$1;->this$0:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {v4}, Landroid/support/design/widget/CheckableImageButton;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setChecked(Z)V

    .line 63
    return-void
.end method
