.class Landroid/support/design/widget/TextInputLayout$TextInputAccessibilityDelegate;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "TextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TextInputLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextInputAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/TextInputLayout;


# direct methods
.method private constructor <init>(Landroid/support/design/widget/TextInputLayout;)V
    .locals 4

    .prologue
    .line 1333
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/TextInputLayout$TextInputAccessibilityDelegate;->this$0:Landroid/support/design/widget/TextInputLayout;

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/TextInputLayout;Landroid/support/design/widget/TextInputLayout$1;)V
    .locals 5

    .prologue
    .line 1333
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/design/widget/TextInputLayout$TextInputAccessibilityDelegate;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6

    .prologue
    .line 1336
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1337
    move-object v3, v2

    const-class v4, Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1338
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 8

    .prologue
    .line 1352
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-super {v5, v6, v7}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 1353
    move-object v5, v2

    const-class v6, Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 1355
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TextInputLayout$TextInputAccessibilityDelegate;->this$0:Landroid/support/design/widget/TextInputLayout;

    invoke-static {v5}, Landroid/support/design/widget/TextInputLayout;->access$600(Landroid/support/design/widget/TextInputLayout;)Landroid/support/design/widget/CollapsingTextHelper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/design/widget/CollapsingTextHelper;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    move-object v3, v5

    .line 1356
    move-object v5, v3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1357
    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    .line 1359
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TextInputLayout$TextInputAccessibilityDelegate;->this$0:Landroid/support/design/widget/TextInputLayout;

    invoke-static {v5}, Landroid/support/design/widget/TextInputLayout;->access$700(Landroid/support/design/widget/TextInputLayout;)Landroid/widget/EditText;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1360
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TextInputLayout$TextInputAccessibilityDelegate;->this$0:Landroid/support/design/widget/TextInputLayout;

    invoke-static {v6}, Landroid/support/design/widget/TextInputLayout;->access$700(Landroid/support/design/widget/TextInputLayout;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setLabelFor(Landroid/view/View;)V

    .line 1362
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TextInputLayout$TextInputAccessibilityDelegate;->this$0:Landroid/support/design/widget/TextInputLayout;

    invoke-static {v5}, Landroid/support/design/widget/TextInputLayout;->access$400(Landroid/support/design/widget/TextInputLayout;)Landroid/widget/TextView;

    move-result-object v5

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TextInputLayout$TextInputAccessibilityDelegate;->this$0:Landroid/support/design/widget/TextInputLayout;

    invoke-static {v5}, Landroid/support/design/widget/TextInputLayout;->access$400(Landroid/support/design/widget/TextInputLayout;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    :goto_0
    move-object v4, v5

    .line 1363
    move-object v5, v4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1364
    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setContentInvalid(Z)V

    .line 1365
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setError(Ljava/lang/CharSequence;)V

    .line 1367
    :cond_2
    return-void

    .line 1362
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 7

    .prologue
    .line 1342
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1344
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TextInputLayout$TextInputAccessibilityDelegate;->this$0:Landroid/support/design/widget/TextInputLayout;

    invoke-static {v4}, Landroid/support/design/widget/TextInputLayout;->access$600(Landroid/support/design/widget/TextInputLayout;)Landroid/support/design/widget/CollapsingTextHelper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/design/widget/CollapsingTextHelper;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    move-object v3, v4

    .line 1345
    move-object v4, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1346
    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    move-object v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 1348
    :cond_0
    return-void
.end method
