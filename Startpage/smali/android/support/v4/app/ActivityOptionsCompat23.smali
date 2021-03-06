.class Landroid/support/v4/app/ActivityOptionsCompat23;
.super Ljava/lang/Object;
.source "ActivityOptionsCompat23.java"


# instance fields
.field private final mActivityOptions:Landroid/app/ActivityOptions;


# direct methods
.method private constructor <init>(Landroid/app/ActivityOptions;)V
    .locals 4

    .prologue
    .line 85
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 86
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/ActivityOptionsCompat23;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 87
    return-void
.end method

.method public static makeBasic()Landroid/support/v4/app/ActivityOptionsCompat23;
    .locals 4

    .prologue
    .line 82
    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat23;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v4/app/ActivityOptionsCompat23;-><init>(Landroid/app/ActivityOptions;)V

    return-object v0
.end method

.method public static makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/support/v4/app/ActivityOptionsCompat23;
    .locals 13

    .prologue
    .line 72
    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    new-instance v5, Landroid/support/v4/app/ActivityOptionsCompat23;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    .line 73
    invoke-static {v7, v8, v9, v10, v11}, Landroid/app/ActivityOptions;->makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/support/v4/app/ActivityOptionsCompat23;-><init>(Landroid/app/ActivityOptions;)V

    move-object v0, v5

    return-object v0
.end method

.method public static makeCustomAnimation(Landroid/content/Context;II)Landroid/support/v4/app/ActivityOptionsCompat23;
    .locals 9

    .prologue
    .line 34
    move-object v0, p0

    move v1, p1

    move v2, p2

    new-instance v3, Landroid/support/v4/app/ActivityOptionsCompat23;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move v6, v1

    move v7, v2

    .line 35
    invoke-static {v5, v6, v7}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/app/ActivityOptionsCompat23;-><init>(Landroid/app/ActivityOptions;)V

    move-object v0, v3

    return-object v0
.end method

.method public static makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/support/v4/app/ActivityOptionsCompat23;
    .locals 13

    .prologue
    .line 40
    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    new-instance v5, Landroid/support/v4/app/ActivityOptionsCompat23;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    .line 41
    invoke-static {v7, v8, v9, v10, v11}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/support/v4/app/ActivityOptionsCompat23;-><init>(Landroid/app/ActivityOptions;)V

    move-object v0, v5

    return-object v0
.end method

.method public static makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/ActivityOptionsCompat23;
    .locals 9

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Landroid/support/v4/app/ActivityOptionsCompat23;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    .line 53
    invoke-static {v5, v6, v7}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/app/ActivityOptionsCompat23;-><init>(Landroid/app/ActivityOptions;)V

    move-object v0, v3

    return-object v0
.end method

.method public static makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/view/View;[Ljava/lang/String;)Landroid/support/v4/app/ActivityOptionsCompat23;
    .locals 11

    .prologue
    .line 59
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v5, 0x0

    move-object v3, v5

    .line 60
    move-object v5, v1

    if-eqz v5, :cond_0

    .line 61
    move-object v5, v1

    array-length v5, v5

    new-array v5, v5, [Landroid/util/Pair;

    move-object v3, v5

    .line 62
    const/4 v5, 0x0

    move v4, v5

    :goto_0
    move v5, v4

    move-object v6, v3

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 63
    move-object v5, v3

    move v6, v4

    move-object v7, v1

    move v8, v4

    aget-object v7, v7, v8

    move-object v8, v2

    move v9, v4

    aget-object v8, v8, v9

    invoke-static {v7, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    aput-object v7, v5, v6

    .line 62
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 66
    :cond_0
    new-instance v5, Landroid/support/v4/app/ActivityOptionsCompat23;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v3

    .line 67
    invoke-static {v7, v8}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/support/v4/app/ActivityOptionsCompat23;-><init>(Landroid/app/ActivityOptions;)V

    move-object v0, v5

    return-object v0
.end method

.method public static makeTaskLaunchBehind()Landroid/support/v4/app/ActivityOptionsCompat23;
    .locals 4

    .prologue
    .line 77
    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat23;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    .line 78
    invoke-static {}, Landroid/app/ActivityOptions;->makeTaskLaunchBehind()Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v4/app/ActivityOptionsCompat23;-><init>(Landroid/app/ActivityOptions;)V

    return-object v0
.end method

.method public static makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroid/support/v4/app/ActivityOptionsCompat23;
    .locals 11

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    new-instance v4, Landroid/support/v4/app/ActivityOptionsCompat23;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v3

    .line 47
    invoke-static {v6, v7, v8, v9}, Landroid/app/ActivityOptions;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroid/app/ActivityOptions;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/v4/app/ActivityOptionsCompat23;-><init>(Landroid/app/ActivityOptions;)V

    move-object v0, v4

    return-object v0
.end method


# virtual methods
.method public requestUsageTimeReport(Landroid/app/PendingIntent;)V
    .locals 4

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/ActivityOptionsCompat23;->mActivityOptions:Landroid/app/ActivityOptions;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->requestUsageTimeReport(Landroid/app/PendingIntent;)V

    .line 99
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/ActivityOptionsCompat23;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public update(Landroid/support/v4/app/ActivityOptionsCompat23;)V
    .locals 4

    .prologue
    .line 94
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/ActivityOptionsCompat23;->mActivityOptions:Landroid/app/ActivityOptions;

    move-object v3, v1

    iget-object v3, v3, Landroid/support/v4/app/ActivityOptionsCompat23;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->update(Landroid/app/ActivityOptions;)V

    .line 95
    return-void
.end method
