.class Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->notifyChildrenChanged(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;

.field final synthetic val$options:Landroid/os/Bundle;

.field final synthetic val$parentId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 174
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->val$parentId:Ljava/lang/String;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->val$options:Landroid/os/Bundle;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 177
    move-object v0, p0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;

    iget-object v7, v7, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v7}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$200(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v1, v7

    :goto_0
    move-object v7, v1

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    move-object v2, v7

    .line 178
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;

    iget-object v7, v7, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v7}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$200(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/util/ArrayMap;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    move-object v3, v7

    .line 179
    move-object v7, v3

    iget-object v7, v7, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->val$parentId:Ljava/lang/String;

    .line 180
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    move-object v4, v7

    .line 181
    move-object v7, v4

    if-eqz v7, :cond_1

    .line 182
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v7

    :goto_1
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/util/Pair;

    move-object v6, v7

    .line 183
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->val$options:Landroid/os/Bundle;

    move-object v8, v6

    iget-object v8, v8, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    invoke-static {v7, v8}, Landroid/support/v4/media/MediaBrowserCompatUtils;->hasDuplicatedItems(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 185
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;

    iget-object v7, v7, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->val$parentId:Ljava/lang/String;

    move-object v9, v3

    move-object v10, v6

    iget-object v10, v10, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Landroid/os/Bundle;

    invoke-static {v7, v8, v9, v10}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$300(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroid/os/Bundle;)V

    .line 187
    :cond_0
    goto :goto_1

    .line 189
    :cond_1
    goto :goto_0

    .line 190
    :cond_2
    return-void
.end method
