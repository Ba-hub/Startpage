.class Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityChooserViewAdapter"
.end annotation


# static fields
.field private static final ITEM_VIEW_TYPE_ACTIVITY:I = 0x0

.field private static final ITEM_VIEW_TYPE_COUNT:I = 0x3

.field private static final ITEM_VIEW_TYPE_FOOTER:I = 0x1

.field public static final MAX_ACTIVITY_COUNT_DEFAULT:I = 0x4

.field public static final MAX_ACTIVITY_COUNT_UNLIMITED:I = 0x7fffffff


# instance fields
.field private mDataModel:Landroid/support/v7/widget/ActivityChooserModel;

.field private mHighlightDefaultActivity:Z

.field private mMaxActivityCount:I

.field private mShowDefaultActivity:Z

.field private mShowFooterView:Z

.field final synthetic this$0:Landroid/support/v7/widget/ActivityChooserView;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ActivityChooserView;)V
    .locals 4

    .prologue
    .line 642
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    move-object v2, v0

    invoke-direct {v2}, Landroid/widget/BaseAdapter;-><init>()V

    .line 656
    move-object v2, v0

    const/4 v3, 0x4

    iput v3, v2, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ActivityChooserView;Landroid/support/v7/widget/ActivityChooserView$1;)V
    .locals 5

    .prologue
    .line 642
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;-><init>(Landroid/support/v7/widget/ActivityChooserView;)V

    return-void
.end method


# virtual methods
.method public getActivityCount()I
    .locals 2

    .prologue
    .line 807
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/support/v7/widget/ActivityChooserModel;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActivityChooserModel;->getActivityCount()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getCount()I
    .locals 5

    .prologue
    .line 692
    move-object v0, p0

    const/4 v3, 0x0

    move v1, v3

    .line 693
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/support/v7/widget/ActivityChooserModel;

    invoke-virtual {v3}, Landroid/support/v7/widget/ActivityChooserModel;->getActivityCount()I

    move-result v3

    move v2, v3

    .line 694
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/support/v7/widget/ActivityChooserModel;

    invoke-virtual {v3}, Landroid/support/v7/widget/ActivityChooserModel;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 695
    add-int/lit8 v2, v2, -0x1

    .line 697
    :cond_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v1, v3

    .line 698
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    if-eqz v3, :cond_1

    .line 699
    add-int/lit8 v1, v1, 0x1

    .line 701
    :cond_1
    move v3, v1

    move v0, v3

    return v0
.end method

.method public getDataModel()Landroid/support/v7/widget/ActivityChooserModel;
    .locals 2

    .prologue
    .line 815
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/support/v7/widget/ActivityChooserModel;

    move-object v0, v1

    return-object v0
.end method

.method public getDefaultActivity()Landroid/content/pm/ResolveInfo;
    .locals 2

    .prologue
    .line 796
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/support/v7/widget/ActivityChooserModel;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActivityChooserModel;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getHistorySize()I
    .locals 2

    .prologue
    .line 811
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/support/v7/widget/ActivityChooserModel;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActivityChooserModel;->getHistorySize()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 706
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItemViewType(I)I

    move-result v3

    move v2, v3

    .line 707
    move v3, v2

    packed-switch v3, :pswitch_data_0

    .line 716
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 709
    :pswitch_0
    const/4 v3, 0x0

    move-object v0, v3

    .line 714
    :goto_0
    return-object v0

    .line 711
    :pswitch_1
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/support/v7/widget/ActivityChooserModel;

    invoke-virtual {v3}, Landroid/support/v7/widget/ActivityChooserModel;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 712
    add-int/lit8 v1, v1, 0x1

    .line 714
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/support/v7/widget/ActivityChooserModel;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 707
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getItemId(I)J
    .locals 4

    .prologue
    .line 722
    move-object v0, p0

    move v1, p1

    move v2, v1

    int-to-long v2, v2

    move-wide v0, v2

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 5

    .prologue
    .line 678
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    if-eqz v2, :cond_0

    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_0

    .line 679
    const/4 v2, 0x1

    move v0, v2

    .line 681
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public getShowDefaultActivity()Z
    .locals 2

    .prologue
    .line 829
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    move v0, v1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14

    .prologue
    .line 727
    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v9, v0

    move v10, v1

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItemViewType(I)I

    move-result v9

    move v4, v9

    .line 728
    move v9, v4

    packed-switch v9, :pswitch_data_0

    .line 760
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v9

    .line 730
    :pswitch_0
    move-object v9, v2

    if-eqz v9, :cond_0

    move-object v9, v2

    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_1

    .line 731
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v9}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    sget v10, Landroid/support/v7/appcompat/R$layout;->abc_activity_chooser_view_list_item:I

    move-object v11, v3

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    move-object v2, v9

    .line 733
    move-object v9, v2

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/view/View;->setId(I)V

    .line 734
    move-object v9, v2

    sget v10, Landroid/support/v7/appcompat/R$id;->title:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    move-object v5, v9

    .line 735
    move-object v9, v5

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v10}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Landroid/support/v7/appcompat/R$string;->abc_activity_chooser_view_see_all:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 738
    :cond_1
    move-object v9, v2

    move-object v0, v9

    .line 758
    :goto_0
    return-object v0

    .line 740
    :pswitch_1
    move-object v9, v2

    if-eqz v9, :cond_2

    move-object v9, v2

    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v9

    sget v10, Landroid/support/v7/appcompat/R$id;->list_item:I

    if-eq v9, v10, :cond_3

    .line 741
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v9}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    sget v10, Landroid/support/v7/appcompat/R$layout;->abc_activity_chooser_view_list_item:I

    move-object v11, v3

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    move-object v2, v9

    .line 744
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v9}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    move-object v5, v9

    .line 746
    move-object v9, v2

    sget v10, Landroid/support/v7/appcompat/R$id;->icon:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    move-object v6, v9

    .line 747
    move-object v9, v0

    move v10, v1

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    move-object v7, v9

    .line 748
    move-object v9, v6

    move-object v10, v7

    move-object v11, v5

    invoke-virtual {v10, v11}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 750
    move-object v9, v2

    sget v10, Landroid/support/v7/appcompat/R$id;->title:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    move-object v8, v9

    .line 751
    move-object v9, v8

    move-object v10, v7

    move-object v11, v5

    invoke-virtual {v10, v11}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 753
    move-object v9, v0

    iget-boolean v9, v9, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    if-eqz v9, :cond_4

    move v9, v1

    if-nez v9, :cond_4

    move-object v9, v0

    iget-boolean v9, v9, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mHighlightDefaultActivity:Z

    if-eqz v9, :cond_4

    .line 754
    move-object v9, v2

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/support/v4/view/ViewCompat;->setActivated(Landroid/view/View;Z)V

    .line 758
    :goto_1
    move-object v9, v2

    move-object v0, v9

    goto :goto_0

    .line 756
    :cond_4
    move-object v9, v2

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/support/v4/view/ViewCompat;->setActivated(Landroid/view/View;Z)V

    goto :goto_1

    .line 728
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    .line 687
    move-object v0, p0

    const/4 v1, 0x3

    move v0, v1

    return v0
.end method

.method public measureContentWidth()I
    .locals 12

    .prologue
    .line 767
    move-object v0, p0

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    move v1, v8

    .line 768
    move-object v8, v0

    const v9, 0x7fffffff

    iput v9, v8, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    .line 770
    const/4 v8, 0x0

    move v2, v8

    .line 771
    const/4 v8, 0x0

    move-object v3, v8

    .line 773
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    move v4, v8

    .line 774
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    move v5, v8

    .line 775
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    move-result v8

    move v6, v8

    .line 777
    const/4 v8, 0x0

    move v7, v8

    :goto_0
    move v8, v7

    move v9, v6

    if-ge v8, v9, :cond_0

    .line 778
    move-object v8, v0

    move v9, v7

    move-object v10, v3

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    move-object v3, v8

    .line 779
    move-object v8, v3

    move v9, v4

    move v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/view/View;->measure(II)V

    .line 780
    move v8, v2

    move-object v9, v3

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v2, v8

    .line 777
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 783
    :cond_0
    move-object v8, v0

    move v9, v1

    iput v9, v8, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    .line 785
    move v8, v2

    move v0, v8

    return v0
.end method

.method public setDataModel(Landroid/support/v7/widget/ActivityChooserModel;)V
    .locals 5

    .prologue
    .line 665
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-static {v3}, Landroid/support/v7/widget/ActivityChooserView;->access$000(Landroid/support/v7/widget/ActivityChooserView;)Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/support/v7/widget/ActivityChooserModel;

    move-result-object v3

    move-object v2, v3

    .line 666
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v3}, Landroid/support/v7/widget/ActivityChooserView;->isShown()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 667
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-static {v4}, Landroid/support/v7/widget/ActivityChooserView;->access$1100(Landroid/support/v7/widget/ActivityChooserView;)Landroid/database/DataSetObserver;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ActivityChooserModel;->unregisterObserver(Ljava/lang/Object;)V

    .line 669
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/support/v7/widget/ActivityChooserModel;

    .line 670
    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v3}, Landroid/support/v7/widget/ActivityChooserView;->isShown()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 671
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-static {v4}, Landroid/support/v7/widget/ActivityChooserView;->access$1100(Landroid/support/v7/widget/ActivityChooserView;)Landroid/database/DataSetObserver;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ActivityChooserModel;->registerObserver(Ljava/lang/Object;)V

    .line 673
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    .line 674
    return-void
.end method

.method public setMaxActivityCount(I)V
    .locals 4

    .prologue
    .line 789
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 790
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    .line 791
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    .line 793
    :cond_0
    return-void
.end method

.method public setShowDefaultActivity(ZZ)V
    .locals 5

    .prologue
    .line 820
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    move v4, v1

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mHighlightDefaultActivity:Z

    move v4, v2

    if-eq v3, v4, :cond_1

    .line 822
    :cond_0
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    .line 823
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mHighlightDefaultActivity:Z

    .line 824
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    .line 826
    :cond_1
    return-void
.end method

.method public setShowFooterView(Z)V
    .locals 4

    .prologue
    .line 800
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 801
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    .line 802
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    .line 804
    :cond_0
    return-void
.end method
