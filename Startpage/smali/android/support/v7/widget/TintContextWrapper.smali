.class public Landroid/support/v7/widget/TintContextWrapper;
.super Landroid/content/ContextWrapper;
.source "TintContextWrapper.java"


# static fields
.field private static final sCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v7/widget/TintContextWrapper;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mResources:Landroid/content/res/Resources;

.field private final mTheme:Landroid/content/res/Resources$Theme;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/support/v7/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 82
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 84
    invoke-static {}, Landroid/support/v7/widget/VectorEnabledTintResources;->shouldBeUsed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    move-object v2, v0

    new-instance v3, Landroid/support/v7/widget/VectorEnabledTintResources;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/support/v7/widget/VectorEnabledTintResources;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    iput-object v3, v2, Landroid/support/v7/widget/TintContextWrapper;->mResources:Landroid/content/res/Resources;

    .line 88
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/TintContextWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v7/widget/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    .line 89
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    move-object v3, v1

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 94
    :goto_0
    return-void

    .line 91
    :cond_0
    move-object v2, v0

    new-instance v3, Landroid/support/v7/widget/TintResources;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/support/v7/widget/TintResources;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    iput-object v3, v2, Landroid/support/v7/widget/TintContextWrapper;->mResources:Landroid/content/res/Resources;

    .line 92
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    goto :goto_0
.end method

.method private static shouldWrap(Landroid/content/Context;)Z
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Landroid/support/v7/widget/TintContextWrapper;

    if-nez v1, :cond_0

    move-object v1, v0

    .line 62
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v7/widget/TintResources;

    if-nez v1, :cond_0

    move-object v1, v0

    .line 63
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v7/widget/VectorEnabledTintResources;

    if-eqz v1, :cond_1

    .line 66
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    .line 75
    :goto_0
    return v0

    .line 68
    :cond_1
    invoke-static {}, Landroid/support/v7/app/AppCompatDelegate;->isCompatVectorFromResourcesEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-le v1, v2, :cond_2

    .line 72
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 75
    :cond_2
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0
.end method

.method public static wrap(Landroid/content/Context;)Landroid/content/Context;
    .locals 10
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 41
    move-object v0, p0

    move-object v5, v0

    invoke-static {v5}, Landroid/support/v7/widget/TintContextWrapper;->shouldWrap(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 43
    const/4 v5, 0x0

    move v1, v5

    sget-object v5, Landroid/support/v7/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v5

    :goto_0
    move v5, v1

    move v6, v2

    if-ge v5, v6, :cond_2

    .line 44
    sget-object v5, Landroid/support/v7/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    move-object v3, v5

    .line 45
    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/TintContextWrapper;

    :goto_1
    move-object v4, v5

    .line 46
    move-object v5, v4

    if-eqz v5, :cond_1

    move-object v5, v4

    invoke-virtual {v5}, Landroid/support/v7/widget/TintContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    move-object v6, v0

    if-ne v5, v6, :cond_1

    .line 47
    move-object v5, v4

    move-object v0, v5

    .line 57
    :goto_2
    return-object v0

    .line 45
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 43
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :cond_2
    new-instance v5, Landroid/support/v7/widget/TintContextWrapper;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/support/v7/widget/TintContextWrapper;-><init>(Landroid/content/Context;)V

    move-object v1, v5

    .line 53
    sget-object v5, Landroid/support/v7/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/ref/WeakReference;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-direct {v7, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 54
    move-object v5, v1

    move-object v0, v5

    goto :goto_2

    .line 57
    :cond_3
    move-object v5, v0

    move-object v0, v5

    goto :goto_2
.end method


# virtual methods
.method public getResources()Landroid/content/res/Resources;
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/TintContextWrapper;->mResources:Landroid/content/res/Resources;

    move-object v0, v1

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-super {v1}, Landroid/content/ContextWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    goto :goto_0
.end method

.method public setTheme(I)V
    .locals 5

    .prologue
    .line 103
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    if-nez v2, :cond_0

    .line 104
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/content/ContextWrapper;->setTheme(I)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    move v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0
.end method
