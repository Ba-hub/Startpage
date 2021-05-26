.class Landroid/support/design/widget/TabLayout$TabView;
.super Landroid/widget/LinearLayout;
.source "TabLayout.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabView"
.end annotation


# instance fields
.field private mCustomIconView:Landroid/widget/ImageView;

.field private mCustomTextView:Landroid/widget/TextView;

.field private mCustomView:Landroid/view/View;

.field private mDefaultMaxLines:I

.field private mIconView:Landroid/widget/ImageView;

.field private mTab:Landroid/support/design/widget/TabLayout$Tab;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/support/design/widget/TabLayout;


# direct methods
.method public constructor <init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 1494
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    .line 1495
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1492
    move-object v3, v0

    const/4 v4, 0x2

    iput v4, v3, Landroid/support/design/widget/TabLayout$TabView;->mDefaultMaxLines:I

    .line 1496
    move-object v3, v1

    invoke-static {v3}, Landroid/support/design/widget/TabLayout;->access$1000(Landroid/support/design/widget/TabLayout;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1497
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-static {v5}, Landroid/support/design/widget/TabLayout;->access$1000(Landroid/support/design/widget/TabLayout;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1499
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-static {v4}, Landroid/support/design/widget/TabLayout;->access$1100(Landroid/support/design/widget/TabLayout;)I

    move-result v4

    move-object v5, v1

    invoke-static {v5}, Landroid/support/design/widget/TabLayout;->access$1200(Landroid/support/design/widget/TabLayout;)I

    move-result v5

    move-object v6, v1

    .line 1500
    invoke-static {v6}, Landroid/support/design/widget/TabLayout;->access$1300(Landroid/support/design/widget/TabLayout;)I

    move-result v6

    move-object v7, v1

    invoke-static {v7}, Landroid/support/design/widget/TabLayout;->access$1400(Landroid/support/design/widget/TabLayout;)I

    move-result v7

    .line 1499
    invoke-static {v3, v4, v5, v6, v7}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 1501
    move-object v3, v0

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout$TabView;->setGravity(I)V

    .line 1502
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout$TabView;->setOrientation(I)V

    .line 1503
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout$TabView;->setClickable(Z)V

    .line 1504
    return-void
.end method

.method static synthetic access$800(Landroid/support/design/widget/TabLayout$TabView;Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 4

    .prologue
    .line 1483
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/design/widget/TabLayout$TabView;->setTab(Landroid/support/design/widget/TabLayout$Tab;)V

    return-void
.end method

.method static synthetic access$900(Landroid/support/design/widget/TabLayout$TabView;)V
    .locals 2

    .prologue
    .line 1483
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/TabLayout$TabView;->reset()V

    return-void
.end method

.method private approximateLineWidth(Landroid/text/Layout;IF)F
    .locals 7

    .prologue
    .line 1793
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v4

    move v5, v3

    move-object v6, v1

    invoke-virtual {v6}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/TextPaint;->getTextSize()F

    move-result v6

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    move v0, v4

    return v0
.end method

.method private reset()V
    .locals 3

    .prologue
    .line 1632
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/support/design/widget/TabLayout$TabView;->setTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 1633
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$TabView;->setSelected(Z)V

    .line 1634
    return-void
.end method

.method private setTab(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 4
    .param p1    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1625
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eq v2, v3, :cond_0

    .line 1626
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    .line 1627
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$TabView;->update()V

    .line 1629
    :cond_0
    return-void
.end method

.method private updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 11
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1704
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v9, :cond_4

    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v9}, Landroid/support/design/widget/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    :goto_0
    move-object v3, v9

    .line 1705
    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v9, :cond_5

    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v9}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    :goto_1
    move-object v4, v9

    .line 1706
    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v9, :cond_6

    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v9}, Landroid/support/design/widget/TabLayout$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v9

    :goto_2
    move-object v5, v9

    .line 1708
    move-object v9, v2

    if-eqz v9, :cond_0

    .line 1709
    move-object v9, v3

    if-eqz v9, :cond_7

    .line 1710
    move-object v9, v2

    move-object v10, v3

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1711
    move-object v9, v2

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1712
    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/design/widget/TabLayout$TabView;->setVisibility(I)V

    .line 1717
    :goto_3
    move-object v9, v2

    move-object v10, v5

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1720
    :cond_0
    move-object v9, v4

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    const/4 v9, 0x1

    :goto_4
    move v6, v9

    .line 1721
    move-object v9, v1

    if-eqz v9, :cond_1

    .line 1722
    move v9, v6

    if-eqz v9, :cond_9

    .line 1723
    move-object v9, v1

    move-object v10, v4

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1724
    move-object v9, v1

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1725
    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/design/widget/TabLayout$TabView;->setVisibility(I)V

    .line 1730
    :goto_5
    move-object v9, v1

    move-object v10, v5

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1733
    :cond_1
    move-object v9, v2

    if-eqz v9, :cond_3

    .line 1734
    move-object v9, v2

    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v7, v9

    .line 1735
    const/4 v9, 0x0

    move v8, v9

    .line 1736
    move v9, v6

    if-eqz v9, :cond_2

    move-object v9, v2

    invoke-virtual {v9}, Landroid/widget/ImageView;->getVisibility()I

    move-result v9

    if-nez v9, :cond_2

    .line 1738
    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    const/16 v10, 0x8

    invoke-static {v9, v10}, Landroid/support/design/widget/TabLayout;->access$2200(Landroid/support/design/widget/TabLayout;I)I

    move-result v9

    move v8, v9

    .line 1740
    :cond_2
    move v9, v8

    move-object v10, v7

    iget v10, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v9, v10, :cond_3

    .line 1741
    move-object v9, v7

    move v10, v8

    iput v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1742
    move-object v9, v2

    invoke-virtual {v9}, Landroid/widget/ImageView;->requestLayout()V

    .line 1746
    :cond_3
    move v9, v6

    if-nez v9, :cond_a

    move-object v9, v5

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 1747
    move-object v9, v0

    move-object v10, v0

    invoke-virtual {v9, v10}, Landroid/support/design/widget/TabLayout$TabView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1752
    :goto_6
    return-void

    .line 1704
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1705
    :cond_5
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 1706
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 1714
    :cond_7
    move-object v9, v2

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1715
    move-object v9, v2

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 1720
    :cond_8
    const/4 v9, 0x0

    goto :goto_4

    .line 1727
    :cond_9
    move-object v9, v1

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1728
    move-object v9, v1

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 1749
    :cond_a
    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/design/widget/TabLayout$TabView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1750
    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/design/widget/TabLayout$TabView;->setLongClickable(Z)V

    goto :goto_6
.end method


# virtual methods
.method public getTab()Landroid/support/design/widget/TabLayout$Tab;
    .locals 2

    .prologue
    .line 1786
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    move-object v0, v1

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1545
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1547
    move-object v2, v1

    const-class v3, Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1548
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1553
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1555
    move-object v2, v1

    const-class v3, Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1556
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 16

    .prologue
    .line 1756
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v10, 0x2

    new-array v10, v10, [I

    move-object v2, v10

    .line 1757
    new-instance v10, Landroid/graphics/Rect;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    move-object v3, v10

    .line 1758
    move-object v10, v0

    move-object v11, v2

    invoke-virtual {v10, v11}, Landroid/support/design/widget/TabLayout$TabView;->getLocationOnScreen([I)V

    .line 1759
    move-object v10, v0

    move-object v11, v3

    invoke-virtual {v10, v11}, Landroid/support/design/widget/TabLayout$TabView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1761
    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v10

    move-object v4, v10

    .line 1762
    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/design/widget/TabLayout$TabView;->getWidth()I

    move-result v10

    move v5, v10

    .line 1763
    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/design/widget/TabLayout$TabView;->getHeight()I

    move-result v10

    move v6, v10

    .line 1764
    move-object v10, v2

    const/4 v11, 0x1

    aget v10, v10, v11

    move v11, v6

    const/4 v12, 0x2

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    move v7, v10

    .line 1765
    move-object v10, v2

    const/4 v11, 0x0

    aget v10, v10, v11

    move v11, v5

    const/4 v12, 0x2

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    move v8, v10

    .line 1766
    move-object v10, v1

    invoke-static {v10}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v10

    if-nez v10, :cond_0

    .line 1767
    move-object v10, v4

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move v9, v10

    .line 1768
    move v10, v9

    move v11, v8

    sub-int/2addr v10, v11

    move v8, v10

    .line 1771
    :cond_0
    move-object v10, v4

    move-object v11, v0

    iget-object v11, v11, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v11}, Landroid/support/design/widget/TabLayout$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    move-object v9, v10

    .line 1773
    move v10, v7

    move-object v11, v3

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-ge v10, v11, :cond_1

    .line 1775
    move-object v10, v9

    const v11, 0x800035

    move v12, v8

    move-object v13, v2

    const/4 v14, 0x1

    aget v13, v13, v14

    move v14, v6

    add-int/2addr v13, v14

    move-object v14, v3

    iget v14, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v14

    invoke-virtual {v10, v11, v12, v13}, Landroid/widget/Toast;->setGravity(III)V

    .line 1781
    :goto_0
    move-object v10, v9

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 1782
    const/4 v10, 0x1

    move v0, v10

    return v0

    .line 1779
    :cond_1
    move-object v10, v9

    const/16 v11, 0x51

    const/4 v12, 0x0

    move v13, v6

    invoke-virtual {v10, v11, v12, v13}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 22

    .prologue
    .line 1560
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v18, v3

    invoke-static/range {v18 .. v18}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    move/from16 v5, v18

    .line 1561
    move/from16 v18, v3

    invoke-static/range {v18 .. v18}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    move/from16 v6, v18

    .line 1562
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/support/design/widget/TabLayout;->access$1500(Landroid/support/design/widget/TabLayout;)I

    move-result v18

    move/from16 v7, v18

    .line 1565
    move/from16 v18, v4

    move/from16 v9, v18

    .line 1567
    move/from16 v18, v7

    if-lez v18, :cond_6

    move/from16 v18, v6

    if-eqz v18, :cond_0

    move/from16 v18, v5

    move/from16 v19, v7

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_6

    .line 1571
    :cond_0
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/support/design/widget/TabLayout;->access$1600(Landroid/support/design/widget/TabLayout;)I

    move-result v18

    const/high16 v19, -0x80000000

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    move/from16 v8, v18

    .line 1578
    :goto_0
    move-object/from16 v18, v2

    move/from16 v19, v8

    move/from16 v20, v9

    invoke-super/range {v18 .. v20}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1581
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    .line 1582
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroid/support/design/widget/TabLayout$TabView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v10, v18

    .line 1583
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/support/design/widget/TabLayout;->access$1700(Landroid/support/design/widget/TabLayout;)F

    move-result v18

    move/from16 v11, v18

    .line 1584
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/design/widget/TabLayout$TabView;->mDefaultMaxLines:I

    move/from16 v18, v0

    move/from16 v12, v18

    .line 1586
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getVisibility()I

    move-result v18

    if-nez v18, :cond_7

    .line 1588
    const/16 v18, 0x1

    move/from16 v12, v18

    .line 1594
    :cond_1
    :goto_1
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getTextSize()F

    move-result v18

    move/from16 v13, v18

    .line 1595
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getLineCount()I

    move-result v18

    move/from16 v14, v18

    .line 1596
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/support/v4/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v18

    move/from16 v15, v18

    .line 1598
    move/from16 v18, v11

    move/from16 v19, v13

    cmpl-float v18, v18, v19

    if-nez v18, :cond_2

    move/from16 v18, v15

    if-ltz v18, :cond_5

    move/from16 v18, v12

    move/from16 v19, v15

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    .line 1600
    :cond_2
    const/16 v18, 0x1

    move/from16 v16, v18

    .line 1602
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/support/design/widget/TabLayout;->access$1900(Landroid/support/design/widget/TabLayout;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    move/from16 v18, v11

    move/from16 v19, v13

    cmpl-float v18, v18, v19

    if-lez v18, :cond_4

    move/from16 v18, v14

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 1608
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v18

    move-object/from16 v17, v18

    .line 1609
    move-object/from16 v18, v17

    if-eqz v18, :cond_3

    move-object/from16 v18, v2

    move-object/from16 v19, v17

    const/16 v20, 0x0

    move/from16 v21, v11

    invoke-direct/range {v18 .. v21}, Landroid/support/design/widget/TabLayout$TabView;->approximateLineWidth(Landroid/text/Layout;IF)F

    move-result v18

    move-object/from16 v19, v2

    .line 1610
    invoke-virtual/range {v19 .. v19}, Landroid/support/design/widget/TabLayout$TabView;->getMeasuredWidth()I

    move-result v19

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroid/support/design/widget/TabLayout$TabView;->getPaddingLeft()I

    move-result v20

    sub-int v19, v19, v20

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroid/support/design/widget/TabLayout$TabView;->getPaddingRight()I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_4

    .line 1611
    :cond_3
    const/16 v18, 0x0

    move/from16 v16, v18

    .line 1615
    :cond_4
    move/from16 v18, v16

    if-eqz v18, :cond_5

    .line 1616
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v20, v11

    invoke-virtual/range {v18 .. v20}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1617
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move/from16 v19, v12

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1618
    move-object/from16 v18, v2

    move/from16 v19, v8

    move/from16 v20, v9

    invoke-super/range {v18 .. v20}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1622
    :cond_5
    return-void

    .line 1574
    :cond_6
    move/from16 v18, v3

    move/from16 v8, v18

    goto/16 :goto_0

    .line 1589
    :cond_7
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getLineCount()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1

    .line 1591
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/support/design/widget/TabLayout;->access$1800(Landroid/support/design/widget/TabLayout;)F

    move-result v18

    move/from16 v11, v18

    goto/16 :goto_1
.end method

.method public performClick()Z
    .locals 3

    .prologue
    .line 1508
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v2

    move v1, v2

    .line 1510
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v2, :cond_0

    .line 1511
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    .line 1512
    const/4 v2, 0x1

    move v0, v2

    .line 1514
    :goto_0
    return v0

    :cond_0
    move v2, v1

    move v0, v2

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 5

    .prologue
    .line 1520
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$TabView;->isSelected()Z

    move-result v3

    move v4, v1

    if-eq v3, v4, :cond_4

    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 1522
    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 1524
    move v3, v2

    if-eqz v3, :cond_0

    move v3, v1

    if-eqz v3, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    .line 1526
    move-object v3, v0

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout$TabView;->sendAccessibilityEvent(I)V

    .line 1531
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 1532
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1534
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 1535
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1537
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 1538
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1540
    :cond_3
    return-void

    .line 1520
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method final update()V
    .locals 8

    .prologue
    .line 1637
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    move-object v1, v4

    .line 1638
    move-object v4, v1

    if-eqz v4, :cond_9

    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v4

    :goto_0
    move-object v2, v4

    .line 1639
    move-object v4, v2

    if-eqz v4, :cond_a

    .line 1640
    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    move-object v3, v4

    .line 1641
    move-object v4, v3

    move-object v5, v0

    if-eq v4, v5, :cond_1

    .line 1642
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 1643
    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1645
    :cond_0
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/support/design/widget/TabLayout$TabView;->addView(Landroid/view/View;)V

    .line 1647
    :cond_1
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    .line 1648
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 1649
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1651
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    .line 1652
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1653
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1656
    :cond_3
    move-object v4, v0

    move-object v5, v2

    const v6, 0x1020014

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    .line 1657
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    .line 1658
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/support/v4/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v5

    iput v5, v4, Landroid/support/design/widget/TabLayout$TabView;->mDefaultMaxLines:I

    .line 1660
    :cond_4
    move-object v4, v0

    move-object v5, v2

    const v6, 0x1020006

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v4, Landroid/support/design/widget/TabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    .line 1671
    :goto_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    if-nez v4, :cond_c

    .line 1673
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-nez v4, :cond_5

    .line 1674
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Landroid/support/design/R$layout;->design_layout_tab_icon:I

    move-object v6, v0

    const/4 v7, 0x0

    .line 1675
    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    move-object v3, v4

    .line 1676
    move-object v4, v0

    move-object v5, v3

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/support/design/widget/TabLayout$TabView;->addView(Landroid/view/View;I)V

    .line 1677
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    .line 1679
    :cond_5
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-nez v4, :cond_6

    .line 1680
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Landroid/support/design/R$layout;->design_layout_tab_text:I

    move-object v6, v0

    const/4 v7, 0x0

    .line 1681
    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object v3, v4

    .line 1682
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/support/design/widget/TabLayout$TabView;->addView(Landroid/view/View;)V

    .line 1683
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    .line 1684
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/support/v4/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v5

    iput v5, v4, Landroid/support/design/widget/TabLayout$TabView;->mDefaultMaxLines:I

    .line 1686
    :cond_6
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v6}, Landroid/support/design/widget/TabLayout;->access$2000(Landroid/support/design/widget/TabLayout;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1687
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v4}, Landroid/support/design/widget/TabLayout;->access$2100(Landroid/support/design/widget/TabLayout;)Landroid/content/res/ColorStateList;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 1688
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v5}, Landroid/support/design/widget/TabLayout;->access$2100(Landroid/support/design/widget/TabLayout;)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1690
    :cond_7
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-direct {v4, v5, v6}, Landroid/support/design/widget/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 1699
    :cond_8
    :goto_2
    move-object v4, v0

    move-object v5, v1

    if-eqz v5, :cond_e

    move-object v5, v1

    invoke-virtual {v5}, Landroid/support/design/widget/TabLayout$Tab;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v5, 0x1

    :goto_3
    invoke-virtual {v4, v5}, Landroid/support/design/widget/TabLayout$TabView;->setSelected(Z)V

    .line 1700
    return-void

    .line 1638
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1663
    :cond_a
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    if-eqz v4, :cond_b

    .line 1664
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/support/design/widget/TabLayout$TabView;->removeView(Landroid/view/View;)V

    .line 1665
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    .line 1667
    :cond_b
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    .line 1668
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/support/design/widget/TabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    goto/16 :goto_1

    .line 1693
    :cond_c
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    if-nez v4, :cond_d

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    if-eqz v4, :cond_8

    .line 1694
    :cond_d
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    invoke-direct {v4, v5, v6}, Landroid/support/design/widget/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_2

    .line 1699
    :cond_e
    const/4 v5, 0x0

    goto :goto_3
.end method
