.class public final Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;
.super Ljava/lang/Object;
.source "SharedPreferencesCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/SharedPreferencesCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EditorCompat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$Helper;
    }
.end annotation


# static fields
.field private static sInstance:Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;


# instance fields
.field private final mHelper:Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$Helper;


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 45
    move-object v1, v0

    new-instance v2, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$Helper;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$Helper;-><init>(Landroid/support/v4/content/SharedPreferencesCompat$1;)V

    iput-object v2, v1, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;->mHelper:Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$Helper;

    .line 46
    return-void
.end method

.method public static getInstance()Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;
    .locals 3

    .prologue
    .line 49
    sget-object v0, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;->sInstance:Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;-><init>()V

    sput-object v0, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;->sInstance:Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;

    .line 52
    :cond_0
    sget-object v0, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;->sInstance:Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;

    return-object v0
.end method


# virtual methods
.method public apply(Landroid/content/SharedPreferences$Editor;)V
    .locals 4
    .param p1    # Landroid/content/SharedPreferences$Editor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 59
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;->mHelper:Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$Helper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$Helper;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 60
    return-void
.end method
