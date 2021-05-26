.class Landroid/support/v4/app/BackStackRecord$2;
.super Ljava/lang/Object;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/BackStackRecord;->prepareSharedElementTransition(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/view/View;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/app/BackStackRecord;

.field final synthetic val$enterTransition:Ljava/lang/Object;

.field final synthetic val$exitTransition:Ljava/lang/Object;

.field final synthetic val$inFragment:Landroid/support/v4/app/Fragment;

.field final synthetic val$isBack:Z

.field final synthetic val$outFragment:Landroid/support/v4/app/Fragment;

.field final synthetic val$sceneRoot:Landroid/view/View;

.field final synthetic val$sharedElementTargets:Ljava/util/ArrayList;

.field final synthetic val$sharedElementTransition:Ljava/lang/Object;

.field final synthetic val$state:Landroid/support/v4/app/BackStackRecord$TransitionState;


# direct methods
.method constructor <init>(Landroid/support/v4/app/BackStackRecord;Landroid/view/View;Ljava/lang/Object;Ljava/util/ArrayList;Landroid/support/v4/app/BackStackRecord$TransitionState;Ljava/lang/Object;Ljava/lang/Object;ZLandroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V
    .locals 13

    .prologue
    .line 1319
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object v11, v0

    move-object v12, v1

    iput-object v12, v11, Landroid/support/v4/app/BackStackRecord$2;->this$0:Landroid/support/v4/app/BackStackRecord;

    move-object v11, v0

    move-object v12, v2

    iput-object v12, v11, Landroid/support/v4/app/BackStackRecord$2;->val$sceneRoot:Landroid/view/View;

    move-object v11, v0

    move-object v12, v3

    iput-object v12, v11, Landroid/support/v4/app/BackStackRecord$2;->val$sharedElementTransition:Ljava/lang/Object;

    move-object v11, v0

    move-object v12, v4

    iput-object v12, v11, Landroid/support/v4/app/BackStackRecord$2;->val$sharedElementTargets:Ljava/util/ArrayList;

    move-object v11, v0

    move-object v12, v5

    iput-object v12, v11, Landroid/support/v4/app/BackStackRecord$2;->val$state:Landroid/support/v4/app/BackStackRecord$TransitionState;

    move-object v11, v0

    move-object v12, v6

    iput-object v12, v11, Landroid/support/v4/app/BackStackRecord$2;->val$enterTransition:Ljava/lang/Object;

    move-object v11, v0

    move-object v12, v7

    iput-object v12, v11, Landroid/support/v4/app/BackStackRecord$2;->val$exitTransition:Ljava/lang/Object;

    move-object v11, v0

    move v12, v8

    iput-boolean v12, v11, Landroid/support/v4/app/BackStackRecord$2;->val$isBack:Z

    move-object v11, v0

    move-object v12, v9

    iput-object v12, v11, Landroid/support/v4/app/BackStackRecord$2;->val$inFragment:Landroid/support/v4/app/Fragment;

    move-object v11, v0

    move-object v12, v10

    iput-object v12, v11, Landroid/support/v4/app/BackStackRecord$2;->val$outFragment:Landroid/support/v4/app/Fragment;

    move-object v11, v0

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 8

    .prologue
    .line 1322
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/BackStackRecord$2;->val$sceneRoot:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1325
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/BackStackRecord$2;->val$sharedElementTransition:Ljava/lang/Object;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/BackStackRecord$2;->val$sharedElementTargets:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/support/v4/app/FragmentTransitionCompat21;->removeTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 1328
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/BackStackRecord$2;->val$sharedElementTargets:Ljava/util/ArrayList;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/BackStackRecord$2;->val$state:Landroid/support/v4/app/BackStackRecord$TransitionState;

    iget-object v3, v3, Landroid/support/v4/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 1329
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/BackStackRecord$2;->val$enterTransition:Ljava/lang/Object;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/BackStackRecord$2;->val$exitTransition:Ljava/lang/Object;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/BackStackRecord$2;->val$sharedElementTransition:Ljava/lang/Object;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord$2;->val$sharedElementTargets:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/support/v4/app/FragmentTransitionCompat21;->excludeSharedElementViews(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Z)V

    .line 1331
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/BackStackRecord$2;->val$sharedElementTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1333
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/BackStackRecord$2;->this$0:Landroid/support/v4/app/BackStackRecord;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/BackStackRecord$2;->val$state:Landroid/support/v4/app/BackStackRecord$TransitionState;

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/app/BackStackRecord$2;->val$isBack:Z

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord$2;->val$inFragment:Landroid/support/v4/app/Fragment;

    invoke-static {v2, v3, v4, v5}, Landroid/support/v4/app/BackStackRecord;->access$000(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/app/BackStackRecord$TransitionState;ZLandroid/support/v4/app/Fragment;)Landroid/support/v4/util/ArrayMap;

    move-result-object v2

    move-object v1, v2

    .line 1335
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/BackStackRecord$2;->val$sharedElementTransition:Ljava/lang/Object;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/BackStackRecord$2;->val$state:Landroid/support/v4/app/BackStackRecord$TransitionState;

    iget-object v3, v3, Landroid/support/v4/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord$2;->val$sharedElementTargets:Ljava/util/ArrayList;

    invoke-static {v2, v3, v4, v5}, Landroid/support/v4/app/FragmentTransitionCompat21;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/Map;Ljava/util/ArrayList;)V

    .line 1338
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/BackStackRecord$2;->this$0:Landroid/support/v4/app/BackStackRecord;

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/BackStackRecord$2;->val$state:Landroid/support/v4/app/BackStackRecord$TransitionState;

    invoke-static {v2, v3, v4}, Landroid/support/v4/app/BackStackRecord;->access$100(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/BackStackRecord$TransitionState;)V

    .line 1340
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/BackStackRecord$2;->this$0:Landroid/support/v4/app/BackStackRecord;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/BackStackRecord$2;->val$state:Landroid/support/v4/app/BackStackRecord$TransitionState;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/BackStackRecord$2;->val$inFragment:Landroid/support/v4/app/Fragment;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord$2;->val$outFragment:Landroid/support/v4/app/Fragment;

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/app/BackStackRecord$2;->val$isBack:Z

    move-object v7, v1

    invoke-static/range {v2 .. v7}, Landroid/support/v4/app/BackStackRecord;->access$200(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;)V

    .line 1344
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/BackStackRecord$2;->val$enterTransition:Ljava/lang/Object;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/BackStackRecord$2;->val$exitTransition:Ljava/lang/Object;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/BackStackRecord$2;->val$sharedElementTransition:Ljava/lang/Object;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord$2;->val$sharedElementTargets:Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Landroid/support/v4/app/FragmentTransitionCompat21;->excludeSharedElementViews(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Z)V

    .line 1346
    const/4 v2, 0x1

    move v0, v2

    return v0
.end method
