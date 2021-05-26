.class Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;
.super Ljava/lang/Object;
.source "CollapsingToolbarLayout.java"

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/CollapsingToolbarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OffsetUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/CollapsingToolbarLayout;


# direct methods
.method private constructor <init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V
    .locals 4

    .prologue
    .line 1243
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/CollapsingToolbarLayout;Landroid/support/design/widget/CollapsingToolbarLayout$1;)V
    .locals 5

    .prologue
    .line 1243
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;-><init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 14

    .prologue
    .line 1246
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    move v10, v2

    invoke-static {v9, v10}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$302(Landroid/support/design/widget/CollapsingToolbarLayout;I)I

    move-result v9

    .line 1248
    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v9}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$400(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v9

    if-eqz v9, :cond_0

    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v9}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$400(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v9

    :goto_0
    move v3, v9

    .line 1250
    const/4 v9, 0x0

    move v4, v9

    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v9}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildCount()I

    move-result v9

    move v5, v9

    :goto_1
    move v9, v4

    move v10, v5

    if-ge v9, v10, :cond_1

    .line 1251
    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    move v10, v4

    invoke-virtual {v9, v10}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v6, v9

    .line 1252
    move-object v9, v6

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    move-object v7, v9

    .line 1253
    move-object v9, v6

    invoke-static {v9}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$500(Landroid/view/View;)Landroid/support/design/widget/ViewOffsetHelper;

    move-result-object v9

    move-object v8, v9

    .line 1255
    move-object v9, v7

    iget v9, v9, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    packed-switch v9, :pswitch_data_0

    .line 1250
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1248
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 1257
    :pswitch_0
    move-object v9, v8

    move v10, v2

    neg-int v10, v10

    const/4 v11, 0x0

    move-object v12, v0

    iget-object v12, v12, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    move-object v13, v6

    .line 1258
    invoke-virtual {v12, v13}, Landroid/support/design/widget/CollapsingToolbarLayout;->getMaxOffsetForPinChild(Landroid/view/View;)I

    move-result v12

    invoke-static {v10, v11, v12}, Landroid/support/design/widget/MathUtils;->constrain(III)I

    move-result v10

    .line 1257
    invoke-virtual {v9, v10}, Landroid/support/design/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    move-result v9

    .line 1259
    goto :goto_2

    .line 1261
    :pswitch_1
    move-object v9, v8

    move v10, v2

    neg-int v10, v10

    int-to-float v10, v10

    move-object v11, v7

    iget v11, v11, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->mParallaxMult:F

    mul-float/2addr v10, v11

    .line 1262
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 1261
    invoke-virtual {v9, v10}, Landroid/support/design/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    move-result v9

    goto :goto_2

    .line 1268
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v9}, Landroid/support/design/widget/CollapsingToolbarLayout;->updateScrimVisibility()V

    .line 1270
    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v9}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$600(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_2

    move v9, v3

    if-lez v9, :cond_2

    .line 1271
    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v9}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1275
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v9}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v9

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v10}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v10

    sub-int/2addr v9, v10

    move v10, v3

    sub-int/2addr v9, v10

    move v4, v9

    .line 1277
    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v9}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$700(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/design/widget/CollapsingTextHelper;

    move-result-object v9

    move v10, v2

    .line 1278
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-float v10, v10

    move v11, v4

    int-to-float v11, v11

    div-float/2addr v10, v11

    .line 1277
    invoke-virtual {v9, v10}, Landroid/support/design/widget/CollapsingTextHelper;->setExpansionFraction(F)V

    .line 1279
    return-void

    .line 1255
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
