.class Landroid/support/v4/widget/TextViewCompatGingerbread;
.super Ljava/lang/Object;
.source "TextViewCompatGingerbread.java"


# static fields
.field private static final LINES:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TextViewCompatGingerbread"

.field private static sMaxModeField:Ljava/lang/reflect/Field;

.field private static sMaxModeFieldFetched:Z

.field private static sMaximumField:Ljava/lang/reflect/Field;

.field private static sMaximumFieldFetched:Z

.field private static sMinModeField:Ljava/lang/reflect/Field;

.field private static sMinModeFieldFetched:Z

.field private static sMinimumField:Ljava/lang/reflect/Field;

.field private static sMinimumFieldFetched:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 102
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static getMaxLines(Landroid/widget/TextView;)I
    .locals 3

    .prologue
    .line 42
    move-object v0, p0

    sget-boolean v1, Landroid/support/v4/widget/TextViewCompatGingerbread;->sMaxModeFieldFetched:Z

    if-nez v1, :cond_0

    .line 43
    const-string v1, "mMaxMode"

    invoke-static {v1}, Landroid/support/v4/widget/TextViewCompatGingerbread;->retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroid/support/v4/widget/TextViewCompatGingerbread;->sMaxModeField:Ljava/lang/reflect/Field;

    .line 44
    const/4 v1, 0x1

    sput-boolean v1, Landroid/support/v4/widget/TextViewCompatGingerbread;->sMaxModeFieldFetched:Z

    .line 46
    :cond_0
    sget-object v1, Landroid/support/v4/widget/TextViewCompatGingerbread;->sMaxModeField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_2

    sget-object v1, Landroid/support/v4/widget/TextViewCompatGingerbread;->sMaxModeField:Ljava/lang/reflect/Field;

    move-object v2, v0

    invoke-static {v1, v2}, Landroid/support/v4/widget/TextViewCompatGingerbread;->retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 48
    sget-boolean v1, Landroid/support/v4/widget/TextViewCompatGingerbread;->sMaximumFieldFetched:Z

    if-nez v1, :cond_1

    .line 49
    const-string v1, "mMaximum"

    invoke-static {v1}, Landroid/support/v4/widget/TextViewCompatGingerbread;->retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroid/support/v4/widget/TextViewCompatGingerbread;->sMaximumField:Ljava/lang/reflect/Field;

    .line 50
    const/4 v1, 0x1

    sput-boolean v1, Landroid/support/v4/widget/TextViewCompatGingerbread;->sMaximumFieldFetched:Z

    .line 52
    :cond_1
    sget-object v1, Landroid/support/v4/widget/TextViewCompatGingerbread;->sMaximumField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_2

    .line 53
    sget-object v1, Landroid/support/v4/widget/TextViewCompatGingerbread;->sMaximumField:Ljava/lang/reflect/Field;

    move-object v2, v0

    invoke-static {v1, v2}, Landroid/support/v4/widget/TextViewCompatGingerbread;->retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v1

    move v0, v1

    .line 56
    :goto_0
    return v0

    :cond_2
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0
.end method

.method static getMinLines(Landroid/widget/TextView;)I
    .locals 3

    .prologue
    .line 60
    move-object v0, p0

    sget-boolean v1, Landroid/support/v4/widget/TextViewCompatGingerbread;->sMinModeFieldFetched:Z

    if-nez v1, :cond_0

    .line 61
    const-string v1, "mMinMode"

    invoke-static {v1}, Landroid/support/v4/widget/TextViewCompatGingerbread;->retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroid/support/v4/widget/TextViewCompatGingerbread;->sMinModeField:Ljava/lang/reflect/Field;

    .line 62
    const/4 v1, 0x1

    sput-boolean v1, Landroid/support/v4/widget/TextViewCompatGingerbread;->sMinModeFieldFetched:Z

    .line 64
    :cond_0
    sget-object v1, Landroid/support/v4/widget/TextViewCompatGingerbread;->sMinModeField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_2

    sget-object v1, Landroid/support/v4/widget/TextViewCompatGingerbread;->sMinModeField:Ljava/lang/reflect/Field;

    move-object v2, v0

    invoke-static {v1, v2}, Landroid/support/v4/widget/TextViewCompatGingerbread;->retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 66
    sget-boolean v1, Landroid/support/v4/widget/TextViewCompatGingerbread;->sMinimumFieldFetched:Z

    if-nez v1, :cond_1

    .line 67
    const-string v1, "mMinimum"

    invoke-static {v1}, Landroid/support/v4/widget/TextViewCompatGingerbread;->retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroid/support/v4/widget/TextViewCompatGingerbread;->sMinimumField:Ljava/lang/reflect/Field;

    .line 68
    const/4 v1, 0x1

    sput-boolean v1, Landroid/support/v4/widget/TextViewCompatGingerbread;->sMinimumFieldFetched:Z

    .line 70
    :cond_1
    sget-object v1, Landroid/support/v4/widget/TextViewCompatGingerbread;->sMinimumField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_2

    .line 71
    sget-object v1, Landroid/support/v4/widget/TextViewCompatGingerbread;->sMinimumField:Ljava/lang/reflect/Field;

    move-object v2, v0

    invoke-static {v1, v2}, Landroid/support/v4/widget/TextViewCompatGingerbread;->retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v1

    move v0, v1

    .line 74
    :goto_0
    return v0

    :cond_2
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0
.end method

.method private static retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 7

    .prologue
    .line 78
    move-object v0, p0

    const/4 v3, 0x0

    move-object v1, v3

    .line 80
    :try_start_0
    const-class v3, Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object v1, v3

    .line 81
    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    move-object v3, v1

    move-object v0, v3

    return-object v0

    .line 82
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 83
    const-string v3, "TextViewCompatGingerbread"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not retrieve "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " field."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method private static retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I
    .locals 7

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    move v0, v3

    .line 94
    :goto_0
    return v0

    .line 91
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 92
    const-string v3, "TextViewCompatGingerbread"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not retrieve value of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " field."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 94
    const/4 v3, -0x1

    move v0, v3

    goto :goto_0
.end method

.method static setTextAppearance(Landroid/widget/TextView;I)V
    .locals 5

    .prologue
    .line 98
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 99
    return-void
.end method
