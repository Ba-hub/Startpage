.class final Landroid/support/v4/app/FragmentTransitionCompat21$2;
.super Ljava/lang/Object;
.source "FragmentTransitionCompat21.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/FragmentTransitionCompat21;->addTransitionTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;Landroid/view/View;Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$container:Landroid/view/View;

.field final synthetic val$enterTransition:Landroid/transition/Transition;

.field final synthetic val$enteringViews:Ljava/util/ArrayList;

.field final synthetic val$exitTransition:Landroid/transition/Transition;

.field final synthetic val$inFragment:Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;

.field final synthetic val$nameOverrides:Ljava/util/Map;

.field final synthetic val$nonExistentView:Landroid/view/View;

.field final synthetic val$renamedViews:Ljava/util/Map;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/transition/Transition;Landroid/view/View;Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;Ljava/util/Map;Ljava/util/Map;Ljava/util/ArrayList;Landroid/transition/Transition;)V
    .locals 11

    .prologue
    .line 159
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v9, v0

    move-object v10, v1

    iput-object v10, v9, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$container:Landroid/view/View;

    move-object v9, v0

    move-object v10, v2

    iput-object v10, v9, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$enterTransition:Landroid/transition/Transition;

    move-object v9, v0

    move-object v10, v3

    iput-object v10, v9, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$nonExistentView:Landroid/view/View;

    move-object v9, v0

    move-object v10, v4

    iput-object v10, v9, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$inFragment:Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;

    move-object v9, v0

    move-object v10, v5

    iput-object v10, v9, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$nameOverrides:Ljava/util/Map;

    move-object v9, v0

    move-object v10, v6

    iput-object v10, v9, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$renamedViews:Ljava/util/Map;

    move-object v9, v0

    move-object v10, v7

    iput-object v10, v9, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$enteringViews:Ljava/util/ArrayList;

    move-object v9, v0

    move-object v10, v8

    iput-object v10, v9, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$exitTransition:Landroid/transition/Transition;

    move-object v9, v0

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 11

    .prologue
    .line 162
    move-object v0, p0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$container:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v7, v8}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 163
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$enterTransition:Landroid/transition/Transition;

    if-eqz v7, :cond_0

    .line 164
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$enterTransition:Landroid/transition/Transition;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$nonExistentView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    move-result-object v7

    .line 166
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$inFragment:Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;

    if-eqz v7, :cond_3

    .line 167
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$inFragment:Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;

    invoke-interface {v7}, Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;->getView()Landroid/view/View;

    move-result-object v7

    move-object v1, v7

    .line 168
    move-object v7, v1

    if-eqz v7, :cond_3

    .line 169
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$nameOverrides:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 170
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$renamedViews:Ljava/util/Map;

    move-object v8, v1

    invoke-static {v7, v8}, Landroid/support/v4/app/FragmentTransitionCompat21;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 171
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$renamedViews:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$nameOverrides:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v7

    .line 172
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$nameOverrides:Ljava/util/Map;

    .line 173
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    .line 172
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v2, v7

    :goto_0
    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    move-object v3, v7

    .line 174
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v4, v7

    .line 175
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$renamedViews:Ljava/util/Map;

    move-object v8, v4

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    move-object v5, v7

    .line 176
    move-object v7, v5

    if-eqz v7, :cond_1

    .line 177
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v6, v7

    .line 178
    move-object v7, v5

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 180
    :cond_1
    goto :goto_0

    .line 182
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$enterTransition:Landroid/transition/Transition;

    if-eqz v7, :cond_3

    .line 183
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$enteringViews:Ljava/util/ArrayList;

    move-object v8, v1

    invoke-static {v7, v8}, Landroid/support/v4/app/FragmentTransitionCompat21;->access$000(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 184
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$enteringViews:Ljava/util/ArrayList;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$renamedViews:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result v7

    .line 185
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$enteringViews:Ljava/util/ArrayList;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$nonExistentView:Landroid/view/View;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 186
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$enterTransition:Landroid/transition/Transition;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$enteringViews:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Landroid/support/v4/app/FragmentTransitionCompat21;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 190
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$exitTransition:Landroid/transition/Transition;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$enterTransition:Landroid/transition/Transition;

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$enteringViews:Ljava/util/ArrayList;

    const/4 v10, 0x1

    invoke-static {v7, v8, v9, v10}, Landroid/support/v4/app/FragmentTransitionCompat21;->access$100(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V

    .line 192
    const/4 v7, 0x1

    move v0, v7

    return v0
.end method
