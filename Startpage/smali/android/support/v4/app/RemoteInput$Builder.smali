.class public final Landroid/support/v4/app/RemoteInput$Builder;
.super Ljava/lang/Object;
.source "RemoteInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/RemoteInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAllowFreeFormInput:Z

.field private mChoices:[Ljava/lang/CharSequence;

.field private mExtras:Landroid/os/Bundle;

.field private mLabel:Ljava/lang/CharSequence;

.field private final mResultKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 110
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 103
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v4/app/RemoteInput$Builder;->mAllowFreeFormInput:Z

    .line 104
    move-object v2, v0

    new-instance v3, Landroid/os/Bundle;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v3, v2, Landroid/support/v4/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    .line 111
    move-object v2, v1

    if-nez v2, :cond_0

    .line 112
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Result key can\'t be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 114
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/RemoteInput$Builder;->mResultKey:Ljava/lang/String;

    .line 115
    return-void
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)Landroid/support/v4/app/RemoteInput$Builder;
    .locals 4

    .prologue
    .line 161
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    .line 162
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 164
    :cond_0
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public build()Landroid/support/v4/app/RemoteInput;
    .locals 10

    .prologue
    .line 181
    move-object v0, p0

    new-instance v1, Landroid/support/v4/app/RemoteInput;

    move-object v9, v1

    move-object v1, v9

    move-object v2, v9

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/RemoteInput$Builder;->mResultKey:Ljava/lang/String;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/RemoteInput$Builder;->mLabel:Ljava/lang/CharSequence;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/RemoteInput$Builder;->mChoices:[Ljava/lang/CharSequence;

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/app/RemoteInput$Builder;->mAllowFreeFormInput:Z

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Landroid/support/v4/app/RemoteInput;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;Landroid/support/v4/app/RemoteInput$1;)V

    move-object v0, v1

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 173
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    move-object v0, v1

    return-object v0
.end method

.method public setAllowFreeFormInput(Z)Landroid/support/v4/app/RemoteInput$Builder;
    .locals 4

    .prologue
    .line 149
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v4/app/RemoteInput$Builder;->mAllowFreeFormInput:Z

    .line 150
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setChoices([Ljava/lang/CharSequence;)Landroid/support/v4/app/RemoteInput$Builder;
    .locals 4

    .prologue
    .line 135
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/RemoteInput$Builder;->mChoices:[Ljava/lang/CharSequence;

    .line 136
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setLabel(Ljava/lang/CharSequence;)Landroid/support/v4/app/RemoteInput$Builder;
    .locals 4

    .prologue
    .line 123
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/RemoteInput$Builder;->mLabel:Ljava/lang/CharSequence;

    .line 124
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method
