.class public Landroid/support/v4/content/ContextCompat;
.super Ljava/lang/Object;
.source "ContextCompat.java"


# static fields
.field private static final DIR_ANDROID:Ljava/lang/String; = "Android"

.field private static final DIR_OBB:Ljava/lang/String; = "obb"

.field private static final TAG:Ljava/lang/String; = "ContextCompat"

.field private static final sLock:Ljava/lang/Object;

.field private static sTempValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/content/ContextCompat;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    .locals 12

    .prologue
    .line 319
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    move-object v2, v7

    .line 320
    move-object v7, v1

    move-object v3, v7

    move-object v7, v3

    array-length v7, v7

    move v4, v7

    const/4 v7, 0x0

    move v5, v7

    :goto_0
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_2

    move-object v7, v3

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    .line 321
    move-object v7, v2

    if-nez v7, :cond_1

    .line 322
    new-instance v7, Ljava/io/File;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v6

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v7

    .line 320
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 323
    :cond_1
    move-object v7, v6

    if-eqz v7, :cond_0

    .line 324
    new-instance v7, Ljava/io/File;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v2

    move-object v10, v6

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v7

    goto :goto_1

    .line 327
    :cond_2
    move-object v7, v2

    move-object v0, v7

    return-object v0
.end method

.method public static checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 421
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    .line 422
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "permission is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 425
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public static createDeviceEncryptedStorageContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 538
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/content/ContextCompat;->createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 2

    .prologue
    .line 523
    move-object v0, p0

    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastN()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 524
    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/content/ContextCompatApi24;->createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    move-object v0, v1

    .line 526
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method private static declared-synchronized createFilesDir(Ljava/io/File;)Ljava/io/File;
    .locals 6

    .prologue
    .line 478
    move-object v0, p0

    const-class v4, Landroid/support/v4/content/ContextCompat;

    monitor-enter v4

    move-object v1, v0

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 479
    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    .line 480
    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 482
    move-object v1, v0

    move-object v0, v1

    .line 488
    :goto_0
    monitor-exit v4

    return-object v0

    .line 484
    :cond_0
    :try_start_1
    const-string v1, "ContextCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create files subdir "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 485
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0

    .line 488
    :cond_1
    move-object v1, v0

    move-object v0, v1

    goto :goto_0

    .line 478
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public static getCodeCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 8

    .prologue
    .line 468
    move-object v0, p0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    move v1, v3

    .line 469
    move v3, v1

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 470
    move-object v3, v0

    invoke-static {v3}, Landroid/support/v4/content/ContextCompatApi21;->getCodeCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    move-object v0, v3

    .line 473
    :goto_0
    return-object v0

    .line 472
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    move-object v2, v3

    .line 473
    new-instance v3, Ljava/io/File;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v2

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v6, "code_cache"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/support/v4/content/ContextCompat;->createFilesDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public static final getColor(Landroid/content/Context;I)I
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 402
    move-object v0, p0

    move v1, p1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    move v2, v3

    .line 403
    move v3, v2

    const/16 v4, 0x17

    if-lt v3, v4, :cond_0

    .line 404
    move-object v3, v0

    move v4, v1

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompatApi23;->getColor(Landroid/content/Context;I)I

    move-result v3

    move v0, v3

    .line 406
    :goto_0
    return v0

    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public static final getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 379
    move-object v0, p0

    move v1, p1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    move v2, v3

    .line 380
    move v3, v2

    const/16 v4, 0x17

    if-lt v3, v4, :cond_0

    .line 381
    move-object v3, v0

    move v4, v1

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompatApi23;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    move-object v0, v3

    .line 383
    :goto_0
    return-object v0

    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public static getDataDir(Landroid/content/Context;)Ljava/io/File;
    .locals 6

    .prologue
    .line 145
    move-object v0, p0

    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastN()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    move-object v2, v0

    invoke-static {v2}, Landroid/support/v4/content/ContextCompatApi24;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    move-object v0, v2

    .line 149
    :goto_0
    return-object v0

    .line 148
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object v1, v2

    .line 149
    move-object v2, v1

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/File;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_1
    move-object v0, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static final getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 11
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 342
    move-object v0, p0

    move v1, p1

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    move v2, v6

    .line 343
    move v6, v2

    const/16 v7, 0x15

    if-lt v6, v7, :cond_0

    .line 344
    move-object v6, v0

    move v7, v1

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompatApi21;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v0, v6

    .line 360
    :goto_0
    return-object v0

    .line 345
    :cond_0
    move v6, v2

    const/16 v7, 0x10

    if-lt v6, v7, :cond_1

    .line 346
    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move v7, v1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 353
    :cond_1
    sget-object v6, Landroid/support/v4/content/ContextCompat;->sLock:Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v4, v7

    monitor-enter v6

    .line 354
    :try_start_0
    sget-object v6, Landroid/support/v4/content/ContextCompat;->sTempValue:Landroid/util/TypedValue;

    if-nez v6, :cond_2

    .line 355
    new-instance v6, Landroid/util/TypedValue;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    sput-object v6, Landroid/support/v4/content/ContextCompat;->sTempValue:Landroid/util/TypedValue;

    .line 357
    :cond_2
    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move v7, v1

    sget-object v8, Landroid/support/v4/content/ContextCompat;->sTempValue:Landroid/util/TypedValue;

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 358
    sget-object v6, Landroid/support/v4/content/ContextCompat;->sTempValue:Landroid/util/TypedValue;

    iget v6, v6, Landroid/util/TypedValue;->resourceId:I

    move v3, v6

    .line 359
    move-object v6, v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 359
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v5

    throw v6
.end method

.method public static getExternalCacheDirs(Landroid/content/Context;)[Ljava/io/File;
    .locals 7

    .prologue
    .line 310
    move-object v0, p0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    move v1, v2

    .line 311
    move v2, v1

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 312
    move-object v2, v0

    invoke-static {v2}, Landroid/support/v4/content/ContextCompatKitKat;->getExternalCacheDirs(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v2

    move-object v0, v2

    .line 314
    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/io/File;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v5

    aput-object v5, v3, v4

    move-object v0, v2

    goto :goto_0
.end method

.method public static getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;
    .locals 9

    .prologue
    .line 257
    move-object v0, p0

    move-object v1, p1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    move v2, v3

    .line 258
    move v3, v2

    const/16 v4, 0x13

    if-lt v3, v4, :cond_0

    .line 259
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompatKitKat;->getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v3

    move-object v0, v3

    .line 261
    :goto_0
    return-object v0

    :cond_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/io/File;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v0, v3

    goto :goto_0
.end method

.method public static final getNoBackupFilesDir(Landroid/content/Context;)Ljava/io/File;
    .locals 8

    .prologue
    .line 443
    move-object v0, p0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    move v1, v3

    .line 444
    move v3, v1

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 445
    move-object v3, v0

    invoke-static {v3}, Landroid/support/v4/content/ContextCompatApi21;->getNoBackupFilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    move-object v0, v3

    .line 448
    :goto_0
    return-object v0

    .line 447
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    move-object v2, v3

    .line 448
    new-instance v3, Ljava/io/File;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v2

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v6, "no_backup"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/support/v4/content/ContextCompat;->createFilesDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public static getObbDirs(Landroid/content/Context;)[Ljava/io/File;
    .locals 9

    .prologue
    .line 197
    move-object v0, p0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    move v1, v3

    .line 198
    move v3, v1

    const/16 v4, 0x13

    if-lt v3, v4, :cond_0

    .line 199
    move-object v3, v0

    invoke-static {v3}, Landroid/support/v4/content/ContextCompatKitKat;->getObbDirs(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v3

    move-object v0, v3

    .line 208
    :goto_0
    return-object v0

    .line 202
    :cond_0
    move v3, v1

    const/16 v4, 0xb

    if-lt v3, v4, :cond_1

    .line 203
    move-object v3, v0

    invoke-static {v3}, Landroid/support/v4/content/ContextCompatHoneycomb;->getObbDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    move-object v2, v3

    .line 208
    :goto_1
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/io/File;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    move-object v6, v2

    aput-object v6, v4, v5

    move-object v0, v3

    goto :goto_0

    .line 205
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-string v7, "Android"

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    const-string v7, "obb"

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x2

    move-object v7, v0

    .line 206
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 205
    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    move-object v2, v3

    goto :goto_1
.end method

.method public static isDeviceEncryptedStorage(Landroid/content/Context;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 562
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/content/ContextCompat;->isDeviceProtectedStorage(Landroid/content/Context;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isDeviceProtectedStorage(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 548
    move-object v0, p0

    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastN()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 549
    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/content/ContextCompatApi24;->isDeviceProtectedStorage(Landroid/content/Context;)Z

    move-result v1

    move v0, v1

    .line 551
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static startActivities(Landroid/content/Context;[Landroid/content/Intent;)Z
    .locals 5

    .prologue
    .line 86
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/support/v4/content/ContextCompat;->startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public static startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z
    .locals 7

    .prologue
    .line 118
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    move v3, v4

    .line 119
    move v4, v3

    const/16 v5, 0x10

    if-lt v4, v5, :cond_0

    .line 120
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-static {v4, v5, v6}, Landroid/support/v4/content/ContextCompatJellybean;->startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 121
    const/4 v4, 0x1

    move v0, v4

    .line 126
    :goto_0
    return v0

    .line 122
    :cond_0
    move v4, v3

    const/16 v5, 0xb

    if-lt v4, v5, :cond_1

    .line 123
    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompatHoneycomb;->startActivities(Landroid/content/Context;[Landroid/content/Intent;)V

    .line 124
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 126
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method
