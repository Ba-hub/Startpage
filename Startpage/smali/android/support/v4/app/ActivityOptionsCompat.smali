.class public Landroid/support/v4/app/ActivityOptionsCompat;
.super Ljava/lang/Object;
.source "ActivityOptionsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;,
        Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;,
        Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;,
        Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB;
    }
.end annotation


# static fields
.field public static final EXTRA_USAGE_TIME_REPORT:Ljava/lang/String; = "android.activity.usage_time"

.field public static final EXTRA_USAGE_TIME_REPORT_PACKAGES:Ljava/lang/String; = "android.usage_time_packages"


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 416
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 417
    return-void
.end method

.method public static makeBasic()Landroid/support/v4/app/ActivityOptionsCompat;
    .locals 4

    .prologue
    .line 299
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 300
    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    .line 301
    invoke-static {}, Landroid/support/v4/app/ActivityOptionsCompat24;->makeBasic()Landroid/support/v4/app/ActivityOptionsCompat24;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;-><init>(Landroid/support/v4/app/ActivityOptionsCompat24;)V

    .line 306
    :goto_0
    return-object v0

    .line 302
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 303
    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    .line 304
    invoke-static {}, Landroid/support/v4/app/ActivityOptionsCompat23;->makeBasic()Landroid/support/v4/app/ActivityOptionsCompat23;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;-><init>(Landroid/support/v4/app/ActivityOptionsCompat23;)V

    goto :goto_0

    .line 306
    :cond_1
    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Landroid/support/v4/app/ActivityOptionsCompat;-><init>()V

    goto :goto_0
.end method

.method public static makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/support/v4/app/ActivityOptionsCompat;
    .locals 13

    .prologue
    .line 137
    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_0

    .line 138
    new-instance v5, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    .line 139
    invoke-static {v7, v8, v9, v10, v11}, Landroid/support/v4/app/ActivityOptionsCompat24;->makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/support/v4/app/ActivityOptionsCompat24;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;-><init>(Landroid/support/v4/app/ActivityOptionsCompat24;)V

    move-object v0, v5

    .line 146
    :goto_0
    return-object v0

    .line 141
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_1

    .line 142
    new-instance v5, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    .line 143
    invoke-static {v7, v8, v9, v10, v11}, Landroid/support/v4/app/ActivityOptionsCompat23;->makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/support/v4/app/ActivityOptionsCompat23;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;-><init>(Landroid/support/v4/app/ActivityOptionsCompat23;)V

    move-object v0, v5

    goto :goto_0

    .line 146
    :cond_1
    new-instance v5, Landroid/support/v4/app/ActivityOptionsCompat;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    invoke-direct {v6}, Landroid/support/v4/app/ActivityOptionsCompat;-><init>()V

    move-object v0, v5

    goto :goto_0
.end method

.method public static makeCustomAnimation(Landroid/content/Context;II)Landroid/support/v4/app/ActivityOptionsCompat;
    .locals 9

    .prologue
    .line 63
    move-object v0, p0

    move v1, p1

    move v2, p2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    .line 64
    new-instance v3, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move v6, v1

    move v7, v2

    .line 65
    invoke-static {v5, v6, v7}, Landroid/support/v4/app/ActivityOptionsCompat24;->makeCustomAnimation(Landroid/content/Context;II)Landroid/support/v4/app/ActivityOptionsCompat24;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;-><init>(Landroid/support/v4/app/ActivityOptionsCompat24;)V

    move-object v0, v3

    .line 76
    :goto_0
    return-object v0

    .line 66
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_1

    .line 67
    new-instance v3, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move v6, v1

    move v7, v2

    .line 68
    invoke-static {v5, v6, v7}, Landroid/support/v4/app/ActivityOptionsCompat23;->makeCustomAnimation(Landroid/content/Context;II)Landroid/support/v4/app/ActivityOptionsCompat23;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;-><init>(Landroid/support/v4/app/ActivityOptionsCompat23;)V

    move-object v0, v3

    goto :goto_0

    .line 69
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_2

    .line 70
    new-instance v3, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move v6, v1

    move v7, v2

    .line 71
    invoke-static {v5, v6, v7}, Landroid/support/v4/app/ActivityOptionsCompat21;->makeCustomAnimation(Landroid/content/Context;II)Landroid/support/v4/app/ActivityOptionsCompat21;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;-><init>(Landroid/support/v4/app/ActivityOptionsCompat21;)V

    move-object v0, v3

    goto :goto_0

    .line 72
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_3

    .line 73
    new-instance v3, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move v6, v1

    move v7, v2

    .line 74
    invoke-static {v5, v6, v7}, Landroid/support/v4/app/ActivityOptionsCompatJB;->makeCustomAnimation(Landroid/content/Context;II)Landroid/support/v4/app/ActivityOptionsCompatJB;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB;-><init>(Landroid/support/v4/app/ActivityOptionsCompatJB;)V

    move-object v0, v3

    goto :goto_0

    .line 76
    :cond_3
    new-instance v3, Landroid/support/v4/app/ActivityOptionsCompat;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Landroid/support/v4/app/ActivityOptionsCompat;-><init>()V

    move-object v0, v3

    goto :goto_0
.end method

.method public static makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/support/v4/app/ActivityOptionsCompat;
    .locals 13

    .prologue
    .line 101
    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_0

    .line 102
    new-instance v5, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    .line 103
    invoke-static {v7, v8, v9, v10, v11}, Landroid/support/v4/app/ActivityOptionsCompat24;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/support/v4/app/ActivityOptionsCompat24;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;-><init>(Landroid/support/v4/app/ActivityOptionsCompat24;)V

    move-object v0, v5

    .line 118
    :goto_0
    return-object v0

    .line 105
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_1

    .line 106
    new-instance v5, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    .line 107
    invoke-static {v7, v8, v9, v10, v11}, Landroid/support/v4/app/ActivityOptionsCompat23;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/support/v4/app/ActivityOptionsCompat23;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;-><init>(Landroid/support/v4/app/ActivityOptionsCompat23;)V

    move-object v0, v5

    goto :goto_0

    .line 109
    :cond_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_2

    .line 110
    new-instance v5, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    .line 111
    invoke-static {v7, v8, v9, v10, v11}, Landroid/support/v4/app/ActivityOptionsCompat21;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/support/v4/app/ActivityOptionsCompat21;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;-><init>(Landroid/support/v4/app/ActivityOptionsCompat21;)V

    move-object v0, v5

    goto :goto_0

    .line 113
    :cond_2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_3

    .line 114
    new-instance v5, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    .line 115
    invoke-static {v7, v8, v9, v10, v11}, Landroid/support/v4/app/ActivityOptionsCompatJB;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/support/v4/app/ActivityOptionsCompatJB;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB;-><init>(Landroid/support/v4/app/ActivityOptionsCompatJB;)V

    move-object v0, v5

    goto :goto_0

    .line 118
    :cond_3
    new-instance v5, Landroid/support/v4/app/ActivityOptionsCompat;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    invoke-direct {v6}, Landroid/support/v4/app/ActivityOptionsCompat;-><init>()V

    move-object v0, v5

    goto :goto_0
.end method

.method public static makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/ActivityOptionsCompat;
    .locals 9

    .prologue
    .line 210
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    .line 211
    new-instance v3, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    .line 212
    invoke-static {v5, v6, v7}, Landroid/support/v4/app/ActivityOptionsCompat24;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/ActivityOptionsCompat24;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;-><init>(Landroid/support/v4/app/ActivityOptionsCompat24;)V

    move-object v0, v3

    .line 223
    :goto_0
    return-object v0

    .line 214
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_1

    .line 215
    new-instance v3, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    .line 216
    invoke-static {v5, v6, v7}, Landroid/support/v4/app/ActivityOptionsCompat23;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/ActivityOptionsCompat23;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;-><init>(Landroid/support/v4/app/ActivityOptionsCompat23;)V

    move-object v0, v3

    goto :goto_0

    .line 218
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_2

    .line 219
    new-instance v3, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    .line 220
    invoke-static {v5, v6, v7}, Landroid/support/v4/app/ActivityOptionsCompat21;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/ActivityOptionsCompat21;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;-><init>(Landroid/support/v4/app/ActivityOptionsCompat21;)V

    move-object v0, v3

    goto :goto_0

    .line 223
    :cond_2
    new-instance v3, Landroid/support/v4/app/ActivityOptionsCompat;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Landroid/support/v4/app/ActivityOptionsCompat;-><init>()V

    move-object v0, v3

    goto :goto_0
.end method

.method public static varargs makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/support/v4/util/Pair;)Landroid/support/v4/app/ActivityOptionsCompat;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Landroid/support/v4/util/Pair",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/support/v4/app/ActivityOptionsCompat;"
        }
    .end annotation

    .prologue
    .line 245
    move-object v0, p0

    move-object v1, p1

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_3

    .line 246
    const/4 v5, 0x0

    move-object v2, v5

    .line 247
    const/4 v5, 0x0

    move-object v3, v5

    .line 248
    move-object v5, v1

    if-eqz v5, :cond_0

    .line 249
    move-object v5, v1

    array-length v5, v5

    new-array v5, v5, [Landroid/view/View;

    move-object v2, v5

    .line 250
    move-object v5, v1

    array-length v5, v5

    new-array v5, v5, [Ljava/lang/String;

    move-object v3, v5

    .line 251
    const/4 v5, 0x0

    move v4, v5

    :goto_0
    move v5, v4

    move-object v6, v1

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 252
    move-object v5, v2

    move v6, v4

    move-object v7, v1

    move v8, v4

    aget-object v7, v7, v8

    iget-object v7, v7, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroid/view/View;

    aput-object v7, v5, v6

    .line 253
    move-object v5, v3

    move v6, v4

    move-object v7, v1

    move v8, v4

    aget-object v7, v7, v8

    iget-object v7, v7, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v6

    .line 251
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 256
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_1

    .line 257
    new-instance v5, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v2

    move-object v9, v3

    .line 258
    invoke-static {v7, v8, v9}, Landroid/support/v4/app/ActivityOptionsCompat24;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/view/View;[Ljava/lang/String;)Landroid/support/v4/app/ActivityOptionsCompat24;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;-><init>(Landroid/support/v4/app/ActivityOptionsCompat24;)V

    move-object v0, v5

    .line 267
    :goto_1
    return-object v0

    .line 259
    :cond_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_2

    .line 260
    new-instance v5, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v2

    move-object v9, v3

    .line 261
    invoke-static {v7, v8, v9}, Landroid/support/v4/app/ActivityOptionsCompat23;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/view/View;[Ljava/lang/String;)Landroid/support/v4/app/ActivityOptionsCompat23;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;-><init>(Landroid/support/v4/app/ActivityOptionsCompat23;)V

    move-object v0, v5

    goto :goto_1

    .line 263
    :cond_2
    new-instance v5, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v2

    move-object v9, v3

    .line 264
    invoke-static {v7, v8, v9}, Landroid/support/v4/app/ActivityOptionsCompat21;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/view/View;[Ljava/lang/String;)Landroid/support/v4/app/ActivityOptionsCompat21;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;-><init>(Landroid/support/v4/app/ActivityOptionsCompat21;)V

    move-object v0, v5

    goto :goto_1

    .line 267
    :cond_3
    new-instance v5, Landroid/support/v4/app/ActivityOptionsCompat;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Landroid/support/v4/app/ActivityOptionsCompat;-><init>()V

    move-object v0, v5

    goto :goto_1
.end method

.method public static makeTaskLaunchBehind()Landroid/support/v4/app/ActivityOptionsCompat;
    .locals 4

    .prologue
    .line 281
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 282
    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    .line 283
    invoke-static {}, Landroid/support/v4/app/ActivityOptionsCompat24;->makeTaskLaunchBehind()Landroid/support/v4/app/ActivityOptionsCompat24;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;-><init>(Landroid/support/v4/app/ActivityOptionsCompat24;)V

    .line 291
    :goto_0
    return-object v0

    .line 284
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 285
    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    .line 286
    invoke-static {}, Landroid/support/v4/app/ActivityOptionsCompat23;->makeTaskLaunchBehind()Landroid/support/v4/app/ActivityOptionsCompat23;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;-><init>(Landroid/support/v4/app/ActivityOptionsCompat23;)V

    goto :goto_0

    .line 287
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 288
    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    .line 289
    invoke-static {}, Landroid/support/v4/app/ActivityOptionsCompat21;->makeTaskLaunchBehind()Landroid/support/v4/app/ActivityOptionsCompat21;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;-><init>(Landroid/support/v4/app/ActivityOptionsCompat21;)V

    goto :goto_0

    .line 291
    :cond_2
    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Landroid/support/v4/app/ActivityOptionsCompat;-><init>()V

    goto :goto_0
.end method

.method public static makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroid/support/v4/app/ActivityOptionsCompat;
    .locals 11

    .prologue
    .line 170
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_0

    .line 171
    new-instance v4, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v3

    .line 172
    invoke-static {v6, v7, v8, v9}, Landroid/support/v4/app/ActivityOptionsCompat24;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroid/support/v4/app/ActivityOptionsCompat24;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;-><init>(Landroid/support/v4/app/ActivityOptionsCompat24;)V

    move-object v0, v4

    .line 187
    :goto_0
    return-object v0

    .line 174
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_1

    .line 175
    new-instance v4, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v3

    .line 176
    invoke-static {v6, v7, v8, v9}, Landroid/support/v4/app/ActivityOptionsCompat23;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroid/support/v4/app/ActivityOptionsCompat23;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;-><init>(Landroid/support/v4/app/ActivityOptionsCompat23;)V

    move-object v0, v4

    goto :goto_0

    .line 178
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_2

    .line 179
    new-instance v4, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v3

    .line 180
    invoke-static {v6, v7, v8, v9}, Landroid/support/v4/app/ActivityOptionsCompat21;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroid/support/v4/app/ActivityOptionsCompat21;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;-><init>(Landroid/support/v4/app/ActivityOptionsCompat21;)V

    move-object v0, v4

    goto :goto_0

    .line 182
    :cond_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_3

    .line 183
    new-instance v4, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v3

    .line 184
    invoke-static {v6, v7, v8, v9}, Landroid/support/v4/app/ActivityOptionsCompatJB;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroid/support/v4/app/ActivityOptionsCompatJB;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB;-><init>(Landroid/support/v4/app/ActivityOptionsCompatJB;)V

    move-object v0, v4

    goto :goto_0

    .line 187
    :cond_3
    new-instance v4, Landroid/support/v4/app/ActivityOptionsCompat;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Landroid/support/v4/app/ActivityOptionsCompat;-><init>()V

    move-object v0, v4

    goto :goto_0
.end method


# virtual methods
.method public getLaunchBounds()Landroid/graphics/Rect;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 440
    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public requestUsageTimeReport(Landroid/app/PendingIntent;)V
    .locals 0

    .prologue
    .line 489
    return-void
.end method

.method public setLaunchBounds(Landroid/graphics/Rect;)Landroid/support/v4/app/ActivityOptionsCompat;
    .locals 3
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 430
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 451
    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public update(Landroid/support/v4/app/ActivityOptionsCompat;)V
    .locals 0

    .prologue
    .line 461
    return-void
.end method
