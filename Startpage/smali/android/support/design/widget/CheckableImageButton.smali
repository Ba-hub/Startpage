.class public Landroid/support/design/widget/CheckableImageButton;
.super Landroid/support/v7/widget/AppCompatImageButton;
.source "CheckableImageButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final DRAWABLE_STATE_CHECKED:[I


# instance fields
.field private mChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x10100a0

    aput v3, v1, v2

    sput-object v0, Landroid/support/design/widget/CheckableImageButton;->DRAWABLE_STATE_CHECKED:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/design/widget/CheckableImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget v6, Landroid/support/v7/appcompat/R$attr;->imageButtonStyle:I

    invoke-direct {v3, v4, v5, v6}, Landroid/support/design/widget/CheckableImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    move-object v4, v0

    new-instance v5, Landroid/support/design/widget/CheckableImageButton$1;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/support/design/widget/CheckableImageButton$1;-><init>(Landroid/support/design/widget/CheckableImageButton;)V

    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 65
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/widget/CheckableImageButton;->mChecked:Z

    move v0, v1

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 5

    .prologue
    .line 89
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/widget/CheckableImageButton;->mChecked:Z

    if-eqz v2, :cond_0

    .line 90
    move-object v2, v0

    move v3, v1

    sget-object v4, Landroid/support/design/widget/CheckableImageButton;->DRAWABLE_STATE_CHECKED:[I

    array-length v4, v4

    add-int/2addr v3, v4

    .line 91
    invoke-super {v2, v3}, Landroid/support/v7/widget/AppCompatImageButton;->onCreateDrawableState(I)[I

    move-result-object v2

    sget-object v3, Landroid/support/design/widget/CheckableImageButton;->DRAWABLE_STATE_CHECKED:[I

    .line 90
    invoke-static {v2, v3}, Landroid/support/design/widget/CheckableImageButton;->mergeDrawableStates([I[I)[I

    move-result-object v2

    move-object v0, v2

    .line 94
    :goto_0
    return-object v0

    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/support/v7/widget/AppCompatImageButton;->onCreateDrawableState(I)[I

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 4

    .prologue
    .line 69
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/widget/CheckableImageButton;->mChecked:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 70
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/design/widget/CheckableImageButton;->mChecked:Z

    .line 71
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CheckableImageButton;->refreshDrawableState()V

    .line 72
    move-object v2, v0

    const/16 v3, 0x800

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CheckableImageButton;->sendAccessibilityEvent(I)V

    .line 75
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 3

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/widget/CheckableImageButton;->mChecked:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/support/design/widget/CheckableImageButton;->setChecked(Z)V

    .line 85
    return-void

    .line 84
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
