.class public abstract Landroid/support/v4/media/MediaBrowserServiceCompat;
.super Landroid/app/Service;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$Result;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi24;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final KEY_MEDIA_ITEM:Ljava/lang/String; = "media_item"

.field private static final RESULT_FLAG_OPTION_NOT_HANDLED:I = 0x1

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.media.browse.MediaBrowserService"

.field private static final TAG:Ljava/lang/String; = "MBServiceCompat"


# instance fields
.field private final mConnections:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mCurConnection:Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

.field private final mHandler:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;

.field private mImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

.field mSession:Landroid/support/v4/media/session/MediaSessionCompat$Token;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 100
    const-string v0, "MBServiceCompat"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/support/v4/media/MediaBrowserServiceCompat;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/app/Service;-><init>()V

    .line 123
    move-object v1, v0

    new-instance v2, Landroid/support/v4/util/ArrayMap;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v2, v1, Landroid/support/v4/media/MediaBrowserServiceCompat;->mConnections:Landroid/support/v4/util/ArrayMap;

    .line 125
    move-object v1, v0

    new-instance v2, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Landroid/support/v4/media/MediaBrowserServiceCompat$1;)V

    iput-object v2, v1, Landroid/support/v4/media/MediaBrowserServiceCompat;->mHandler:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;

    .line 1116
    return-void
.end method

.method static synthetic access$100(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat;->mHandler:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1000(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroid/support/v4/os/ResultReceiver;)V
    .locals 8

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v4/media/MediaBrowserServiceCompat;->performLoadItem(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroid/support/v4/os/ResultReceiver;)V

    return-void
.end method

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 98
    sget-boolean v0, Landroid/support/v4/media/MediaBrowserServiceCompat;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1200(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;
    .locals 6

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v4/media/MediaBrowserServiceCompat;->applyOptions(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/util/ArrayMap;
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat;->mConnections:Landroid/support/v4/util/ArrayMap;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v4/media/MediaBrowserServiceCompat;->performLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$400(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat;->mCurConnection:Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$600(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/String;I)Z
    .locals 6

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v4/media/MediaBrowserServiceCompat;->isValidPackage(Ljava/lang/String;I)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method static synthetic access$800(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 10

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/support/v4/media/MediaBrowserServiceCompat;->addSubscription(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$900(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroid/os/IBinder;)Z
    .locals 8

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v4/media/MediaBrowserServiceCompat;->removeSubscription(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroid/os/IBinder;)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method private addSubscription(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 14

    .prologue
    .line 983
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v8, v2

    iget-object v8, v8, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    move-object v5, v8

    .line 984
    move-object v8, v5

    if-nez v8, :cond_0

    .line 985
    new-instance v8, Ljava/util/ArrayList;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v8

    .line 987
    :cond_0
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v6, v8

    :goto_0
    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/util/Pair;

    move-object v7, v8

    .line 988
    move-object v8, v3

    move-object v9, v7

    iget-object v9, v9, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    if-ne v8, v9, :cond_1

    move-object v8, v4

    move-object v9, v7

    iget-object v9, v9, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Landroid/os/Bundle;

    .line 989
    invoke-static {v8, v9}, Landroid/support/v4/media/MediaBrowserCompatUtils;->areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 997
    :goto_1
    return-void

    .line 992
    :cond_1
    goto :goto_0

    .line 993
    :cond_2
    move-object v8, v5

    new-instance v9, Landroid/support/v4/util/Pair;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v3

    move-object v12, v4

    invoke-direct {v10, v11, v12}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 994
    move-object v8, v2

    iget-object v8, v8, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    move-object v9, v1

    move-object v10, v5

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 996
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v4

    invoke-direct {v8, v9, v10, v11}, Landroid/support/v4/media/MediaBrowserServiceCompat;->performLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroid/os/Bundle;)V

    .line 997
    goto :goto_1
.end method

.method private applyOptions(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1071
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v1

    if-nez v7, :cond_0

    .line 1072
    const/4 v7, 0x0

    move-object v0, v7

    .line 1087
    :goto_0
    return-object v0

    .line 1074
    :cond_0
    move-object v7, v2

    const-string v8, "android.media.browse.extra.PAGE"

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    move v3, v7

    .line 1075
    move-object v7, v2

    const-string v8, "android.media.browse.extra.PAGE_SIZE"

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    move v4, v7

    .line 1076
    move v7, v3

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    move v7, v4

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 1077
    move-object v7, v1

    move-object v0, v7

    goto :goto_0

    .line 1079
    :cond_1
    move v7, v4

    move v8, v3

    mul-int/2addr v7, v8

    move v5, v7

    .line 1080
    move v7, v5

    move v8, v4

    add-int/2addr v7, v8

    move v6, v7

    .line 1081
    move v7, v3

    if-ltz v7, :cond_2

    move v7, v4

    const/4 v8, 0x1

    if-lt v7, v8, :cond_2

    move v7, v5

    move-object v8, v1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt v7, v8, :cond_3

    .line 1082
    :cond_2
    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v0, v7

    goto :goto_0

    .line 1084
    :cond_3
    move v7, v6

    move-object v8, v1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-le v7, v8, :cond_4

    .line 1085
    move-object v7, v1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move v6, v7

    .line 1087
    :cond_4
    move-object v7, v1

    move v8, v5

    move v9, v6

    invoke-interface {v7, v8, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    move-object v0, v7

    goto :goto_0
.end method

.method private isValidPackage(Ljava/lang/String;I)Z
    .locals 9

    .prologue
    .line 963
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v7, v1

    if-nez v7, :cond_0

    .line 964
    const/4 v7, 0x0

    move v0, v7

    .line 974
    :goto_0
    return v0

    .line 966
    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v4/media/MediaBrowserServiceCompat;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    move-object v3, v7

    .line 967
    move-object v7, v3

    move v8, v2

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 968
    move-object v7, v4

    array-length v7, v7

    move v5, v7

    .line 969
    const/4 v7, 0x0

    move v6, v7

    :goto_1
    move v7, v6

    move v8, v5

    if-ge v7, v8, :cond_2

    .line 970
    move-object v7, v4

    move v8, v6

    aget-object v7, v7, v8

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 971
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 969
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 974
    :cond_2
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0
.end method

.method private performLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroid/os/Bundle;)V
    .locals 13

    .prologue
    .line 1030
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    new-instance v5, Landroid/support/v4/media/MediaBrowserServiceCompat$1;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v1

    move-object v11, v3

    invoke-direct/range {v6 .. v11}, Landroid/support/v4/media/MediaBrowserServiceCompat$1;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Ljava/lang/String;Landroid/os/Bundle;)V

    move-object v4, v5

    .line 1055
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Landroid/support/v4/media/MediaBrowserServiceCompat;->mCurConnection:Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1056
    move-object v5, v3

    if-nez v5, :cond_0

    .line 1057
    move-object v5, v0

    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/media/MediaBrowserServiceCompat;->onLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$Result;)V

    .line 1061
    :goto_0
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/support/v4/media/MediaBrowserServiceCompat;->mCurConnection:Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1063
    move-object v5, v4

    invoke-virtual {v5}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->isDone()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1064
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onLoadChildren must call detach() or sendResult() before returning for package="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    iget-object v8, v8, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1059
    :cond_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v4

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v4/media/MediaBrowserServiceCompat;->onLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$Result;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1067
    :cond_1
    return-void
.end method

.method private performLoadItem(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroid/support/v4/os/ResultReceiver;)V
    .locals 11

    .prologue
    .line 1092
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    new-instance v5, Landroid/support/v4/media/MediaBrowserServiceCompat$2;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v1

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Landroid/support/v4/media/MediaBrowserServiceCompat$2;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroid/support/v4/os/ResultReceiver;)V

    move-object v4, v5

    .line 1102
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Landroid/support/v4/media/MediaBrowserServiceCompat;->mCurConnection:Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1103
    move-object v5, v0

    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/media/MediaBrowserServiceCompat;->onLoadItem(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$Result;)V

    .line 1104
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/support/v4/media/MediaBrowserServiceCompat;->mCurConnection:Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1106
    move-object v5, v4

    invoke-virtual {v5}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->isDone()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1107
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onLoadItem must call detach() or sendResult() before returning for id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1110
    :cond_0
    return-void
.end method

.method private removeSubscription(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroid/os/IBinder;)Z
    .locals 9

    .prologue
    .line 1003
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, v3

    if-nez v7, :cond_1

    .line 1004
    move-object v7, v2

    iget-object v7, v7, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    move v0, v7

    .line 1020
    :goto_1
    return v0

    .line 1004
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 1006
    :cond_1
    const/4 v7, 0x0

    move v4, v7

    .line 1007
    move-object v7, v2

    iget-object v7, v7, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    move-object v5, v7

    .line 1008
    move-object v7, v5

    if-eqz v7, :cond_4

    .line 1009
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v6, v7

    .line 1010
    :cond_2
    :goto_2
    move-object v7, v6

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1011
    move-object v7, v3

    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/util/Pair;

    iget-object v8, v8, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    if-ne v7, v8, :cond_2

    .line 1012
    const/4 v7, 0x1

    move v4, v7

    .line 1013
    move-object v7, v6

    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 1016
    :cond_3
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_4

    .line 1017
    move-object v7, v2

    iget-object v7, v7, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1020
    :cond_4
    move v7, v4

    move v0, v7

    goto :goto_1
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 784
    return-void
.end method

.method public final getBrowserRootHints()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 920
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat;->mImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    invoke-interface {v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;->getBrowserRootHints()Landroid/os/Bundle;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 900
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat;->mSession:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-object v0, v1

    return-object v0
.end method

.method public notifyChildrenChanged(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 932
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    .line 933
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "parentId cannot be null in notifyChildrenChanged"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 935
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat;->mImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    move-object v3, v1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;->notifyChildrenChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 936
    return-void
.end method

.method public notifyChildrenChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 950
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    if-nez v3, :cond_0

    .line 951
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "parentId cannot be null in notifyChildrenChanged"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 953
    :cond_0
    move-object v3, v2

    if-nez v3, :cond_1

    .line 954
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "options cannot be null in notifyChildrenChanged"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 956
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat;->mImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;->notifyChildrenChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 957
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    .prologue
    .line 779
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat;->mImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 764
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/app/Service;->onCreate()V

    .line 765
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_0

    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastN()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 766
    :cond_0
    move-object v1, v0

    new-instance v2, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi24;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi24;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    iput-object v2, v1, Landroid/support/v4/media/MediaBrowserServiceCompat;->mImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    .line 774
    :goto_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat;->mImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    invoke-interface {v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;->onCreate()V

    .line 775
    return-void

    .line 767
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    .line 768
    move-object v1, v0

    new-instance v2, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    iput-object v2, v1, Landroid/support/v4/media/MediaBrowserServiceCompat;->mImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    goto :goto_0

    .line 769
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_3

    .line 770
    move-object v1, v0

    new-instance v2, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    iput-object v2, v1, Landroid/support/v4/media/MediaBrowserServiceCompat;->mImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    goto :goto_0

    .line 772
    :cond_3
    move-object v1, v0

    new-instance v2, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    iput-object v2, v1, Landroid/support/v4/media/MediaBrowserServiceCompat;->mImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    goto :goto_0
.end method

.method public abstract onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract onLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$Result;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/media/MediaBrowserServiceCompat$Result;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/MediaBrowserServiceCompat$Result",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public onLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$Result;Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/media/MediaBrowserServiceCompat$Result;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/MediaBrowserServiceCompat$Result",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 853
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v2

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->setFlags(I)V

    .line 854
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/media/MediaBrowserServiceCompat;->onLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$Result;)V

    .line 855
    return-void
.end method

.method public onLoadItem(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$Result;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/MediaBrowserServiceCompat$Result",
            "<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 873
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    .line 874
    return-void
.end method

.method public setSessionToken(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 6

    .prologue
    .line 885
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    .line 886
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Session token may not be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 888
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat;->mSession:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v2, :cond_1

    .line 889
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "The session token has already been set."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 891
    :cond_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/media/MediaBrowserServiceCompat;->mSession:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 892
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat;->mImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;->setSessionToken(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 893
    return-void
.end method
