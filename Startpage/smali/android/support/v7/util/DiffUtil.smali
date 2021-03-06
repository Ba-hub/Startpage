.class public Landroid/support/v7/util/DiffUtil;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/util/DiffUtil$PostponedUpdate;,
        Landroid/support/v7/util/DiffUtil$DiffResult;,
        Landroid/support/v7/util/DiffUtil$Range;,
        Landroid/support/v7/util/DiffUtil$Snake;,
        Landroid/support/v7/util/DiffUtil$Callback;
    }
.end annotation


# static fields
.field private static final SNAKE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/support/v7/util/DiffUtil$Snake;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 72
    new-instance v0, Landroid/support/v7/util/DiffUtil$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v7/util/DiffUtil$1;-><init>()V

    sput-object v0, Landroid/support/v7/util/DiffUtil;->SNAKE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method public static calculateDiff(Landroid/support/v7/util/DiffUtil$Callback;)Landroid/support/v7/util/DiffUtil$DiffResult;
    .locals 3

    .prologue
    .line 92
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/support/v7/util/DiffUtil;->calculateDiff(Landroid/support/v7/util/DiffUtil$Callback;Z)Landroid/support/v7/util/DiffUtil$DiffResult;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static calculateDiff(Landroid/support/v7/util/DiffUtil$Callback;Z)Landroid/support/v7/util/DiffUtil$DiffResult;
    .locals 24

    .prologue
    .line 109
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object v15, v1

    invoke-virtual {v15}, Landroid/support/v7/util/DiffUtil$Callback;->getOldListSize()I

    move-result v15

    move v3, v15

    .line 110
    move-object v15, v1

    invoke-virtual {v15}, Landroid/support/v7/util/DiffUtil$Callback;->getNewListSize()I

    move-result v15

    move v4, v15

    .line 112
    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v15

    .line 116
    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v15

    .line 118
    move-object v15, v6

    new-instance v16, Landroid/support/v7/util/DiffUtil$Range;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    const/16 v18, 0x0

    move/from16 v19, v3

    const/16 v20, 0x0

    move/from16 v21, v4

    invoke-direct/range {v17 .. v21}, Landroid/support/v7/util/DiffUtil$Range;-><init>(IIII)V

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v15

    .line 120
    move v15, v3

    move/from16 v16, v4

    add-int v15, v15, v16

    move/from16 v16, v3

    move/from16 v17, v4

    sub-int v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v16

    add-int v15, v15, v16

    move v7, v15

    .line 124
    move v15, v7

    const/16 v16, 0x2

    mul-int/lit8 v15, v15, 0x2

    new-array v15, v15, [I

    move-object v8, v15

    .line 125
    move v15, v7

    const/16 v16, 0x2

    mul-int/lit8 v15, v15, 0x2

    new-array v15, v15, [I

    move-object v9, v15

    .line 128
    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v15

    .line 129
    :goto_0
    move-object v15, v6

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_7

    .line 130
    move-object v15, v6

    move-object/from16 v16, v6

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/support/v7/util/DiffUtil$Range;

    move-object v11, v15

    .line 131
    move-object v15, v1

    move-object/from16 v16, v11

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    move/from16 v16, v0

    move-object/from16 v17, v11

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/util/DiffUtil$Range;->oldListEnd:I

    move/from16 v17, v0

    move-object/from16 v18, v11

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    move/from16 v18, v0

    move-object/from16 v19, v11

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/util/DiffUtil$Range;->newListEnd:I

    move/from16 v19, v0

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move/from16 v22, v7

    invoke-static/range {v15 .. v22}, Landroid/support/v7/util/DiffUtil;->diffPartial(Landroid/support/v7/util/DiffUtil$Callback;IIII[I[II)Landroid/support/v7/util/DiffUtil$Snake;

    move-result-object v15

    move-object v12, v15

    .line 133
    move-object v15, v12

    if-eqz v15, :cond_6

    .line 134
    move-object v15, v12

    iget v15, v15, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    if-lez v15, :cond_0

    .line 135
    move-object v15, v5

    move-object/from16 v16, v12

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v15

    .line 138
    :cond_0
    move-object v15, v12

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    move/from16 v16, v0

    move-object/from16 v17, v11

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    .line 139
    move-object v15, v12

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    move/from16 v16, v0

    move-object/from16 v17, v11

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    .line 142
    move-object v15, v10

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_1

    new-instance v15, Landroid/support/v7/util/DiffUtil$Range;

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    invoke-direct/range {v16 .. v16}, Landroid/support/v7/util/DiffUtil$Range;-><init>()V

    :goto_1
    move-object v13, v15

    .line 144
    move-object v15, v13

    move-object/from16 v16, v11

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    .line 145
    move-object v15, v13

    move-object/from16 v16, v11

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    .line 146
    move-object v15, v12

    iget-boolean v15, v15, Landroid/support/v7/util/DiffUtil$Snake;->reverse:Z

    if-eqz v15, :cond_2

    .line 147
    move-object v15, v13

    move-object/from16 v16, v12

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v7/util/DiffUtil$Range;->oldListEnd:I

    .line 148
    move-object v15, v13

    move-object/from16 v16, v12

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v7/util/DiffUtil$Range;->newListEnd:I

    .line 158
    :goto_2
    move-object v15, v6

    move-object/from16 v16, v13

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v15

    .line 162
    move-object v15, v11

    move-object v14, v15

    .line 163
    move-object v15, v12

    iget-boolean v15, v15, Landroid/support/v7/util/DiffUtil$Snake;->reverse:Z

    if-eqz v15, :cond_5

    .line 164
    move-object v15, v12

    iget-boolean v15, v15, Landroid/support/v7/util/DiffUtil$Snake;->removal:Z

    if-eqz v15, :cond_4

    .line 165
    move-object v15, v14

    move-object/from16 v16, v12

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    move/from16 v16, v0

    move-object/from16 v17, v12

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    move/from16 v17, v0

    add-int v16, v16, v17

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    .line 166
    move-object v15, v14

    move-object/from16 v16, v12

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    move/from16 v16, v0

    move-object/from16 v17, v12

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    .line 175
    :goto_3
    move-object v15, v6

    move-object/from16 v16, v14

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v15

    .line 180
    :goto_4
    goto/16 :goto_0

    .line 142
    :cond_1
    move-object v15, v10

    move-object/from16 v16, v10

    .line 143
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    .line 142
    invoke-interface/range {v15 .. v16}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/support/v7/util/DiffUtil$Range;

    goto/16 :goto_1

    .line 150
    :cond_2
    move-object v15, v12

    iget-boolean v15, v15, Landroid/support/v7/util/DiffUtil$Snake;->removal:Z

    if-eqz v15, :cond_3

    .line 151
    move-object v15, v13

    move-object/from16 v16, v12

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    move/from16 v16, v0

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v7/util/DiffUtil$Range;->oldListEnd:I

    .line 152
    move-object v15, v13

    move-object/from16 v16, v12

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v7/util/DiffUtil$Range;->newListEnd:I

    goto/16 :goto_2

    .line 154
    :cond_3
    move-object v15, v13

    move-object/from16 v16, v12

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v7/util/DiffUtil$Range;->oldListEnd:I

    .line 155
    move-object v15, v13

    move-object/from16 v16, v12

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    move/from16 v16, v0

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v7/util/DiffUtil$Range;->newListEnd:I

    goto/16 :goto_2

    .line 168
    :cond_4
    move-object v15, v14

    move-object/from16 v16, v12

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    move/from16 v16, v0

    move-object/from16 v17, v12

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    .line 169
    move-object v15, v14

    move-object/from16 v16, v12

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    move/from16 v16, v0

    move-object/from16 v17, v12

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    move/from16 v17, v0

    add-int v16, v16, v17

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    goto/16 :goto_3

    .line 172
    :cond_5
    move-object v15, v14

    move-object/from16 v16, v12

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    move/from16 v16, v0

    move-object/from16 v17, v12

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    .line 173
    move-object v15, v14

    move-object/from16 v16, v12

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    move/from16 v16, v0

    move-object/from16 v17, v12

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    goto/16 :goto_3

    .line 177
    :cond_6
    move-object v15, v10

    move-object/from16 v16, v11

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v15

    goto/16 :goto_4

    .line 182
    :cond_7
    move-object v15, v5

    sget-object v16, Landroid/support/v7/util/DiffUtil;->SNAKE_COMPARATOR:Ljava/util/Comparator;

    invoke-static/range {v15 .. v16}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 184
    new-instance v15, Landroid/support/v7/util/DiffUtil$DiffResult;

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    move-object/from16 v17, v1

    move-object/from16 v18, v5

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move/from16 v21, v2

    invoke-direct/range {v16 .. v21}, Landroid/support/v7/util/DiffUtil$DiffResult;-><init>(Landroid/support/v7/util/DiffUtil$Callback;Ljava/util/List;[I[IZ)V

    move-object v1, v15

    return-object v1
.end method

.method private static diffPartial(Landroid/support/v7/util/DiffUtil$Callback;IIII[I[II)Landroid/support/v7/util/DiffUtil$Snake;
    .locals 28

    .prologue
    .line 190
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v22, v4

    move/from16 v23, v3

    sub-int v22, v22, v23

    move/from16 v10, v22

    .line 191
    move/from16 v22, v6

    move/from16 v23, v5

    sub-int v22, v22, v23

    move/from16 v11, v22

    .line 193
    move/from16 v22, v4

    move/from16 v23, v3

    sub-int v22, v22, v23

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    move/from16 v22, v6

    move/from16 v23, v5

    sub-int v22, v22, v23

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_1

    .line 194
    :cond_0
    const/16 v22, 0x0

    move-object/from16 v2, v22

    .line 268
    :goto_0
    return-object v2

    .line 197
    :cond_1
    move/from16 v22, v10

    move/from16 v23, v11

    sub-int v22, v22, v23

    move/from16 v12, v22

    .line 198
    move/from16 v22, v10

    move/from16 v23, v11

    add-int v22, v22, v23

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    const/16 v23, 0x2

    div-int/lit8 v22, v22, 0x2

    move/from16 v13, v22

    .line 199
    move-object/from16 v22, v7

    move/from16 v23, v9

    move/from16 v24, v13

    sub-int v23, v23, v24

    const/16 v24, 0x1

    add-int/lit8 v23, v23, -0x1

    move/from16 v24, v9

    move/from16 v25, v13

    add-int v24, v24, v25

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    const/16 v25, 0x0

    invoke-static/range {v22 .. v25}, Ljava/util/Arrays;->fill([IIII)V

    .line 200
    move-object/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v13

    sub-int v23, v23, v24

    const/16 v24, 0x1

    add-int/lit8 v23, v23, -0x1

    move/from16 v24, v12

    add-int v23, v23, v24

    move/from16 v24, v9

    move/from16 v25, v13

    add-int v24, v24, v25

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    move/from16 v25, v12

    add-int v24, v24, v25

    move/from16 v25, v10

    invoke-static/range {v22 .. v25}, Ljava/util/Arrays;->fill([IIII)V

    .line 201
    move/from16 v22, v12

    const/16 v23, 0x2

    rem-int/lit8 v22, v22, 0x2

    if-eqz v22, :cond_3

    const/16 v22, 0x1

    :goto_1
    move/from16 v14, v22

    .line 202
    const/16 v22, 0x0

    move/from16 v15, v22

    :goto_2
    move/from16 v22, v15

    move/from16 v23, v13

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_d

    .line 203
    move/from16 v22, v15

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v16, v22

    :goto_3
    move/from16 v22, v16

    move/from16 v23, v15

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_7

    .line 208
    move/from16 v22, v16

    move/from16 v23, v15

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_2

    move/from16 v22, v16

    move/from16 v23, v15

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_4

    move-object/from16 v22, v7

    move/from16 v23, v9

    move/from16 v24, v16

    add-int v23, v23, v24

    const/16 v24, 0x1

    add-int/lit8 v23, v23, -0x1

    aget v22, v22, v23

    move-object/from16 v23, v7

    move/from16 v24, v9

    move/from16 v25, v16

    add-int v24, v24, v25

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    aget v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    .line 209
    :cond_2
    move-object/from16 v22, v7

    move/from16 v23, v9

    move/from16 v24, v16

    add-int v23, v23, v24

    const/16 v24, 0x1

    add-int/lit8 v23, v23, 0x1

    aget v22, v22, v23

    move/from16 v17, v22

    .line 210
    const/16 v22, 0x0

    move/from16 v18, v22

    .line 216
    :goto_4
    move/from16 v22, v17

    move/from16 v23, v16

    sub-int v22, v22, v23

    move/from16 v19, v22

    .line 218
    :goto_5
    move/from16 v22, v17

    move/from16 v23, v10

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    move/from16 v22, v19

    move/from16 v23, v11

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    move-object/from16 v22, v2

    move/from16 v23, v3

    move/from16 v24, v17

    add-int v23, v23, v24

    move/from16 v24, v5

    move/from16 v25, v19

    add-int v24, v24, v25

    .line 219
    invoke-virtual/range {v22 .. v24}, Landroid/support/v7/util/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 220
    add-int/lit8 v17, v17, 0x1

    .line 221
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 201
    :cond_3
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 212
    :cond_4
    move-object/from16 v22, v7

    move/from16 v23, v9

    move/from16 v24, v16

    add-int v23, v23, v24

    const/16 v24, 0x1

    add-int/lit8 v23, v23, -0x1

    aget v22, v22, v23

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    move/from16 v17, v22

    .line 213
    const/16 v22, 0x1

    move/from16 v18, v22

    goto :goto_4

    .line 223
    :cond_5
    move-object/from16 v22, v7

    move/from16 v23, v9

    move/from16 v24, v16

    add-int v23, v23, v24

    move/from16 v24, v17

    aput v24, v22, v23

    .line 224
    move/from16 v22, v14

    if-eqz v22, :cond_6

    move/from16 v22, v16

    move/from16 v23, v12

    move/from16 v24, v15

    sub-int v23, v23, v24

    const/16 v24, 0x1

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_6

    move/from16 v22, v16

    move/from16 v23, v12

    move/from16 v24, v15

    add-int v23, v23, v24

    const/16 v24, 0x1

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_6

    .line 225
    move-object/from16 v22, v7

    move/from16 v23, v9

    move/from16 v24, v16

    add-int v23, v23, v24

    aget v22, v22, v23

    move-object/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v16

    add-int v24, v24, v25

    aget v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_6

    .line 226
    new-instance v22, Landroid/support/v7/util/DiffUtil$Snake;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    invoke-direct/range {v23 .. v23}, Landroid/support/v7/util/DiffUtil$Snake;-><init>()V

    move-object/from16 v20, v22

    .line 227
    move-object/from16 v22, v20

    move-object/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v16

    add-int v24, v24, v25

    aget v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    .line 228
    move-object/from16 v22, v20

    move-object/from16 v23, v20

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    move/from16 v23, v0

    move/from16 v24, v16

    sub-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    .line 229
    move-object/from16 v22, v20

    move-object/from16 v23, v7

    move/from16 v24, v9

    move/from16 v25, v16

    add-int v24, v24, v25

    aget v23, v23, v24

    move-object/from16 v24, v8

    move/from16 v25, v9

    move/from16 v26, v16

    add-int v25, v25, v26

    aget v24, v24, v25

    sub-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    .line 230
    move-object/from16 v22, v20

    move/from16 v23, v18

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Landroid/support/v7/util/DiffUtil$Snake;->removal:Z

    .line 231
    move-object/from16 v22, v20

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Landroid/support/v7/util/DiffUtil$Snake;->reverse:Z

    .line 232
    move-object/from16 v22, v20

    move-object/from16 v2, v22

    goto/16 :goto_0

    .line 203
    :cond_6
    add-int/lit8 v16, v16, 0x2

    goto/16 :goto_3

    .line 236
    :cond_7
    move/from16 v22, v15

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v16, v22

    :goto_6
    move/from16 v22, v16

    move/from16 v23, v15

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_c

    .line 238
    move/from16 v22, v16

    move/from16 v23, v12

    add-int v22, v22, v23

    move/from16 v17, v22

    .line 241
    move/from16 v22, v17

    move/from16 v23, v15

    move/from16 v24, v12

    add-int v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_8

    move/from16 v22, v17

    move/from16 v23, v15

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v24, v12

    add-int v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_9

    move-object/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v17

    add-int v23, v23, v24

    const/16 v24, 0x1

    add-int/lit8 v23, v23, -0x1

    aget v22, v22, v23

    move-object/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v17

    add-int v24, v24, v25

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    aget v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_9

    .line 243
    :cond_8
    move-object/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v17

    add-int v23, v23, v24

    const/16 v24, 0x1

    add-int/lit8 v23, v23, -0x1

    aget v22, v22, v23

    move/from16 v18, v22

    .line 244
    const/16 v22, 0x0

    move/from16 v19, v22

    .line 251
    :goto_7
    move/from16 v22, v18

    move/from16 v23, v17

    sub-int v22, v22, v23

    move/from16 v20, v22

    .line 253
    :goto_8
    move/from16 v22, v18

    if-lez v22, :cond_a

    move/from16 v22, v20

    if-lez v22, :cond_a

    move-object/from16 v22, v2

    move/from16 v23, v3

    move/from16 v24, v18

    add-int v23, v23, v24

    const/16 v24, 0x1

    add-int/lit8 v23, v23, -0x1

    move/from16 v24, v5

    move/from16 v25, v20

    add-int v24, v24, v25

    const/16 v25, 0x1

    add-int/lit8 v24, v24, -0x1

    .line 254
    invoke-virtual/range {v22 .. v24}, Landroid/support/v7/util/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 255
    add-int/lit8 v18, v18, -0x1

    .line 256
    add-int/lit8 v20, v20, -0x1

    goto :goto_8

    .line 246
    :cond_9
    move-object/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v17

    add-int v23, v23, v24

    const/16 v24, 0x1

    add-int/lit8 v23, v23, 0x1

    aget v22, v22, v23

    const/16 v23, 0x1

    add-int/lit8 v22, v22, -0x1

    move/from16 v18, v22

    .line 247
    const/16 v22, 0x1

    move/from16 v19, v22

    goto :goto_7

    .line 258
    :cond_a
    move-object/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v17

    add-int v23, v23, v24

    move/from16 v24, v18

    aput v24, v22, v23

    .line 259
    move/from16 v22, v14

    if-nez v22, :cond_b

    move/from16 v22, v16

    move/from16 v23, v12

    add-int v22, v22, v23

    move/from16 v23, v15

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_b

    move/from16 v22, v16

    move/from16 v23, v12

    add-int v22, v22, v23

    move/from16 v23, v15

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_b

    .line 260
    move-object/from16 v22, v7

    move/from16 v23, v9

    move/from16 v24, v17

    add-int v23, v23, v24

    aget v22, v22, v23

    move-object/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v17

    add-int v24, v24, v25

    aget v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_b

    .line 261
    new-instance v22, Landroid/support/v7/util/DiffUtil$Snake;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    invoke-direct/range {v23 .. v23}, Landroid/support/v7/util/DiffUtil$Snake;-><init>()V

    move-object/from16 v21, v22

    .line 262
    move-object/from16 v22, v21

    move-object/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v17

    add-int v24, v24, v25

    aget v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    .line 263
    move-object/from16 v22, v21

    move-object/from16 v23, v21

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    move/from16 v23, v0

    move/from16 v24, v17

    sub-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    .line 264
    move-object/from16 v22, v21

    move-object/from16 v23, v7

    move/from16 v24, v9

    move/from16 v25, v17

    add-int v24, v24, v25

    aget v23, v23, v24

    move-object/from16 v24, v8

    move/from16 v25, v9

    move/from16 v26, v17

    add-int v25, v25, v26

    aget v24, v24, v25

    sub-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    .line 266
    move-object/from16 v22, v21

    move/from16 v23, v19

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Landroid/support/v7/util/DiffUtil$Snake;->removal:Z

    .line 267
    move-object/from16 v22, v21

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Landroid/support/v7/util/DiffUtil$Snake;->reverse:Z

    .line 268
    move-object/from16 v22, v21

    move-object/from16 v2, v22

    goto/16 :goto_0

    .line 236
    :cond_b
    add-int/lit8 v16, v16, 0x2

    goto/16 :goto_6

    .line 202
    :cond_c
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 273
    :cond_d
    new-instance v22, Ljava/lang/IllegalStateException;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    const-string v24, "DiffUtil hit an unexpected case while trying to calculate the optimal path. Please make sure your data is not changing during the diff calculation."

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v22
.end method
