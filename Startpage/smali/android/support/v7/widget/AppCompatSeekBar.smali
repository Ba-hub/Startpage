.class public Landroid/support/v7/widget/AppCompatSeekBar;
.super Landroid/widget/SeekBar;
.source "AppCompatSeekBar.java"


# instance fields
.field private mAppCompatSeekBarHelper:Landroid/support/v7/widget/AppCompatSeekBarHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget v6, Landroid/support/v7/appcompat/R$attr;->seekBarStyle:I

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    move-object v4, v0

    new-instance v5, Landroid/support/v7/widget/AppCompatSeekBarHelper;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/support/v7/widget/AppCompatSeekBarHelper;-><init>(Landroid/widget/SeekBar;)V

    iput-object v5, v4, Landroid/support/v7/widget/AppCompatSeekBar;->mAppCompatSeekBarHelper:Landroid/support/v7/widget/AppCompatSeekBarHelper;

    .line 47
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AppCompatSeekBar;->mAppCompatSeekBarHelper:Landroid/support/v7/widget/AppCompatSeekBarHelper;

    move-object v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/AppCompatSeekBarHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/widget/SeekBar;->drawableStateChanged()V

    .line 59
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSeekBar;->mAppCompatSeekBarHelper:Landroid/support/v7/widget/AppCompatSeekBarHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatSeekBarHelper;->drawableStateChanged()V

    .line 60
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/widget/SeekBar;->jumpDrawablesToCurrentState()V

    .line 65
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSeekBar;->mAppCompatSeekBarHelper:Landroid/support/v7/widget/AppCompatSeekBarHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatSeekBarHelper;->jumpDrawablesToCurrentState()V

    .line 66
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 53
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatSeekBar;->mAppCompatSeekBarHelper:Landroid/support/v7/widget/AppCompatSeekBarHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AppCompatSeekBarHelper;->drawTickMarks(Landroid/graphics/Canvas;)V

    .line 54
    return-void
.end method
