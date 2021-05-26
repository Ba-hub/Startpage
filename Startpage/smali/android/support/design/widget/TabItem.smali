.class public final Landroid/support/design/widget/TabItem;
.super Landroid/view/View;
.source "TabItem.java"


# instance fields
.field final mCustomLayout:I

.field final mIcon:Landroid/graphics/drawable/Drawable;

.field final mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/design/widget/TabItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    move-object v4, v1

    move-object v5, v2

    sget-object v6, Landroid/support/design/R$styleable;->TabItem:[I

    invoke-static {v4, v5, v6}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v4

    move-object v3, v4

    .line 52
    move-object v4, v0

    move-object v5, v3

    sget v6, Landroid/support/design/R$styleable;->TabItem_android_text:I

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v4, Landroid/support/design/widget/TabItem;->mText:Ljava/lang/CharSequence;

    .line 53
    move-object v4, v0

    move-object v5, v3

    sget v6, Landroid/support/design/R$styleable;->TabItem_android_icon:I

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v4, Landroid/support/design/widget/TabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 54
    move-object v4, v0

    move-object v5, v3

    sget v6, Landroid/support/design/R$styleable;->TabItem_android_layout:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v4, Landroid/support/design/widget/TabItem;->mCustomLayout:I

    .line 55
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 56
    return-void
.end method
