.class Landroid/support/v7/app/NotificationCompatImplBase;
.super Ljava/lang/Object;
.source "NotificationCompatImplBase.java"


# static fields
.field static final MAX_MEDIA_BUTTONS:I = 0x5

.field static final MAX_MEDIA_BUTTONS_IN_COMPACT:I = 0x3


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyStandardTemplate(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIZ)Landroid/widget/RemoteViews;
    .locals 29

    .prologue
    .line 168
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move/from16 v12, p10

    move/from16 v13, p11

    new-instance v19, Landroid/widget/RemoteViews;

    move-object/from16 v28, v19

    move-object/from16 v19, v28

    move-object/from16 v20, v28

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v21

    move/from16 v22, v12

    invoke-direct/range {v20 .. v22}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object/from16 v14, v19

    .line 169
    const/16 v19, 0x0

    move/from16 v15, v19

    .line 170
    const/16 v19, 0x0

    move/from16 v16, v19

    .line 174
    move-object/from16 v19, v7

    if-eqz v19, :cond_6

    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0x10

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_6

    .line 175
    move-object/from16 v19, v14

    sget v20, Landroid/support/v7/appcompat/R$id;->icon:I

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 176
    move-object/from16 v19, v14

    sget v20, Landroid/support/v7/appcompat/R$id;->icon:I

    move-object/from16 v21, v7

    invoke-virtual/range {v19 .. v21}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 180
    :goto_0
    move-object/from16 v19, v3

    if-eqz v19, :cond_0

    .line 181
    move-object/from16 v19, v14

    sget v20, Landroid/support/v7/appcompat/R$id;->title:I

    move-object/from16 v21, v3

    invoke-virtual/range {v19 .. v21}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 183
    :cond_0
    move-object/from16 v19, v4

    if-eqz v19, :cond_1

    .line 184
    move-object/from16 v19, v14

    sget v20, Landroid/support/v7/appcompat/R$id;->text:I

    move-object/from16 v21, v4

    invoke-virtual/range {v19 .. v21}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 185
    const/16 v19, 0x1

    move/from16 v15, v19

    .line 187
    :cond_1
    move-object/from16 v19, v5

    if-eqz v19, :cond_7

    .line 188
    move-object/from16 v19, v14

    sget v20, Landroid/support/v7/appcompat/R$id;->info:I

    move-object/from16 v21, v5

    invoke-virtual/range {v19 .. v21}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 189
    move-object/from16 v19, v14

    sget v20, Landroid/support/v7/appcompat/R$id;->info:I

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 190
    const/16 v19, 0x1

    move/from16 v15, v19

    .line 208
    :goto_1
    move-object/from16 v19, v8

    if-eqz v19, :cond_2

    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0x10

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_2

    .line 209
    move-object/from16 v19, v14

    sget v20, Landroid/support/v7/appcompat/R$id;->text:I

    move-object/from16 v21, v8

    invoke-virtual/range {v19 .. v21}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 210
    move-object/from16 v19, v4

    if-eqz v19, :cond_a

    .line 211
    move-object/from16 v19, v14

    sget v20, Landroid/support/v7/appcompat/R$id;->text2:I

    move-object/from16 v21, v4

    invoke-virtual/range {v19 .. v21}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 212
    move-object/from16 v19, v14

    sget v20, Landroid/support/v7/appcompat/R$id;->text2:I

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 213
    const/16 v19, 0x1

    move/from16 v16, v19

    .line 220
    :cond_2
    :goto_2
    move/from16 v19, v16

    if-eqz v19, :cond_4

    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0x10

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_4

    .line 221
    move/from16 v19, v13

    if-eqz v19, :cond_3

    .line 223
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v17, v19

    .line 224
    move-object/from16 v19, v17

    sget v20, Landroid/support/v7/appcompat/R$dimen;->notification_subtext_size:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v18, v19

    .line 226
    move-object/from16 v19, v14

    sget v20, Landroid/support/v7/appcompat/R$id;->text:I

    const/16 v21, 0x0

    move/from16 v22, v18

    invoke-virtual/range {v19 .. v22}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 229
    :cond_3
    move-object/from16 v19, v14

    sget v20, Landroid/support/v7/appcompat/R$id;->line1:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v19 .. v24}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 232
    :cond_4
    move-wide/from16 v19, v10

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-eqz v19, :cond_5

    .line 233
    move/from16 v19, v9

    if-eqz v19, :cond_b

    .line 234
    move-object/from16 v19, v14

    sget v20, Landroid/support/v7/appcompat/R$id;->chronometer:I

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 235
    move-object/from16 v19, v14

    sget v20, Landroid/support/v7/appcompat/R$id;->chronometer:I

    const-string v21, "setBase"

    move-wide/from16 v22, v10

    .line 236
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    sub-long v24, v24, v26

    add-long v22, v22, v24

    .line 235
    invoke-virtual/range {v19 .. v23}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 237
    move-object/from16 v19, v14

    sget v20, Landroid/support/v7/appcompat/R$id;->chronometer:I

    const-string v21, "setStarted"

    const/16 v22, 0x1

    invoke-virtual/range {v19 .. v22}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 243
    :cond_5
    :goto_3
    move-object/from16 v19, v14

    sget v20, Landroid/support/v7/appcompat/R$id;->line3:I

    move/from16 v21, v15

    if-eqz v21, :cond_c

    const/16 v21, 0x0

    :goto_4
    invoke-virtual/range {v19 .. v21}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 244
    move-object/from16 v19, v14

    move-object/from16 v2, v19

    return-object v2

    .line 178
    :cond_6
    move-object/from16 v19, v14

    sget v20, Landroid/support/v7/appcompat/R$id;->icon:I

    const/16 v21, 0x8

    invoke-virtual/range {v19 .. v21}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_0

    .line 191
    :cond_7
    move/from16 v19, v6

    if-lez v19, :cond_9

    .line 192
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    sget v20, Landroid/support/v7/appcompat/R$integer;->status_bar_notification_info_maxnum:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v19

    move/from16 v17, v19

    .line 194
    move/from16 v19, v6

    move/from16 v20, v17

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_8

    .line 195
    move-object/from16 v19, v14

    sget v20, Landroid/support/v7/appcompat/R$id;->info:I

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    sget v22, Landroid/support/v7/appcompat/R$string;->status_bar_notification_info_overflow:I

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 201
    :goto_5
    move-object/from16 v19, v14

    sget v20, Landroid/support/v7/appcompat/R$id;->info:I

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 202
    const/16 v19, 0x1

    move/from16 v15, v19

    .line 203
    goto/16 :goto_1

    .line 198
    :cond_8
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v19

    move-object/from16 v18, v19

    .line 199
    move-object/from16 v19, v14

    sget v20, Landroid/support/v7/appcompat/R$id;->info:I

    move-object/from16 v21, v18

    move/from16 v22, v6

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_5

    .line 204
    :cond_9
    move-object/from16 v19, v14

    sget v20, Landroid/support/v7/appcompat/R$id;->info:I

    const/16 v21, 0x8

    invoke-virtual/range {v19 .. v21}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_1

    .line 215
    :cond_a
    move-object/from16 v19, v14

    sget v20, Landroid/support/v7/appcompat/R$id;->text2:I

    const/16 v21, 0x8

    invoke-virtual/range {v19 .. v21}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_2

    .line 239
    :cond_b
    move-object/from16 v19, v14

    sget v20, Landroid/support/v7/appcompat/R$id;->time:I

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 240
    move-object/from16 v19, v14

    sget v20, Landroid/support/v7/appcompat/R$id;->time:I

    const-string v21, "setTime"

    move-wide/from16 v22, v10

    invoke-virtual/range {v19 .. v23}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    goto/16 :goto_3

    .line 243
    :cond_c
    const/16 v21, 0x8

    goto/16 :goto_4
.end method

.method private static generateBigContentView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJLjava/util/List;ZLandroid/app/PendingIntent;)Landroid/widget/RemoteViews;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/NotificationCompatBase$Action;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "I",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/CharSequence;",
            "ZJ",
            "Ljava/util/List",
            "<TT;>;Z",
            "Landroid/app/PendingIntent;",
            ")",
            "Landroid/widget/RemoteViews;"
        }
    .end annotation

    .prologue
    .line 118
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move-object/from16 v12, p10

    move/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v19, v12

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    const/16 v20, 0x5

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v15, v19

    .line 119
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move/from16 v23, v6

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move/from16 v26, v9

    move-wide/from16 v27, v10

    move/from16 v29, v15

    .line 121
    invoke-static/range {v29 .. v29}, Landroid/support/v7/app/NotificationCompatImplBase;->getBigLayoutResource(I)I

    move-result v29

    const/16 v30, 0x0

    .line 119
    invoke-static/range {v19 .. v30}, Landroid/support/v7/app/NotificationCompatImplBase;->applyStandardTemplate(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIZ)Landroid/widget/RemoteViews;

    move-result-object v19

    move-object/from16 v16, v19

    .line 123
    move-object/from16 v19, v16

    sget v20, Landroid/support/v7/appcompat/R$id;->media_actions:I

    invoke-virtual/range {v19 .. v20}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 124
    move/from16 v19, v15

    if-lez v19, :cond_0

    .line 125
    const/16 v19, 0x0

    move/from16 v17, v19

    :goto_0
    move/from16 v19, v17

    move/from16 v20, v15

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 126
    move-object/from16 v19, v2

    move-object/from16 v20, v12

    move/from16 v21, v17

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/support/v4/app/NotificationCompatBase$Action;

    invoke-static/range {v19 .. v20}, Landroid/support/v7/app/NotificationCompatImplBase;->generateMediaActionButton(Landroid/content/Context;Landroid/support/v4/app/NotificationCompatBase$Action;)Landroid/widget/RemoteViews;

    move-result-object v19

    move-object/from16 v18, v19

    .line 127
    move-object/from16 v19, v16

    sget v20, Landroid/support/v7/appcompat/R$id;->media_actions:I

    move-object/from16 v21, v18

    invoke-virtual/range {v19 .. v21}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 125
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 130
    :cond_0
    move/from16 v19, v13

    if-eqz v19, :cond_1

    .line 131
    move-object/from16 v19, v16

    sget v20, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 132
    move-object/from16 v19, v16

    sget v20, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    const-string v21, "setAlpha"

    move-object/from16 v22, v2

    .line 133
    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    sget v23, Landroid/support/v7/appcompat/R$integer;->cancel_button_image_alpha:I

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v22

    .line 132
    invoke-virtual/range {v19 .. v22}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 134
    move-object/from16 v19, v16

    sget v20, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    move-object/from16 v21, v14

    invoke-virtual/range {v19 .. v21}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 138
    :goto_1
    move-object/from16 v19, v16

    move-object/from16 v2, v19

    return-object v2

    .line 136
    :cond_1
    move-object/from16 v19, v16

    sget v20, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    const/16 v21, 0x8

    invoke-virtual/range {v19 .. v21}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1
.end method

.method private static generateContentView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJLjava/util/List;[IZLandroid/app/PendingIntent;)Landroid/widget/RemoteViews;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/NotificationCompatBase$Action;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "I",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/CharSequence;",
            "ZJ",
            "Ljava/util/List",
            "<TT;>;[IZ",
            "Landroid/app/PendingIntent;",
            ")",
            "Landroid/widget/RemoteViews;"
        }
    .end annotation

    .prologue
    .line 65
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    move/from16 v29, v9

    move-wide/from16 v30, v10

    sget v32, Landroid/support/v7/appcompat/R$layout;->notification_template_media:I

    const/16 v33, 0x1

    invoke-static/range {v22 .. v33}, Landroid/support/v7/app/NotificationCompatImplBase;->applyStandardTemplate(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIZ)Landroid/widget/RemoteViews;

    move-result-object v22

    move-object/from16 v16, v22

    .line 69
    move-object/from16 v22, v12

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v17, v22

    .line 70
    move-object/from16 v22, v13

    if-nez v22, :cond_0

    const/16 v22, 0x0

    .line 72
    :goto_0
    move/from16 v18, v22

    .line 73
    move-object/from16 v22, v16

    sget v23, Landroid/support/v7/appcompat/R$id;->media_actions:I

    invoke-virtual/range {v22 .. v23}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 74
    move/from16 v22, v18

    if-lez v22, :cond_2

    .line 75
    const/16 v22, 0x0

    move/from16 v19, v22

    :goto_1
    move/from16 v22, v19

    move/from16 v23, v18

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    .line 76
    move/from16 v22, v19

    move/from16 v23, v17

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_1

    .line 77
    new-instance v22, Ljava/lang/IllegalArgumentException;

    move-object/from16 v34, v22

    move-object/from16 v22, v34

    move-object/from16 v23, v34

    const-string v24, "setShowActionsInCompactView: action %d out of bounds (max %d)"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v34, v25

    move-object/from16 v25, v34

    move-object/from16 v26, v34

    const/16 v27, 0x0

    move/from16 v28, v19

    .line 79
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v34, v25

    move-object/from16 v25, v34

    move-object/from16 v26, v34

    const/16 v27, 0x1

    move/from16 v28, v17

    const/16 v29, 0x1

    add-int/lit8 v28, v28, -0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    .line 77
    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 70
    :cond_0
    move-object/from16 v22, v13

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x3

    .line 72
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v22

    goto :goto_0

    .line 82
    :cond_1
    move-object/from16 v22, v12

    move-object/from16 v23, v13

    move/from16 v24, v19

    aget v23, v23, v24

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/support/v4/app/NotificationCompatBase$Action;

    move-object/from16 v20, v22

    .line 83
    move-object/from16 v22, v2

    move-object/from16 v23, v20

    invoke-static/range {v22 .. v23}, Landroid/support/v7/app/NotificationCompatImplBase;->generateMediaActionButton(Landroid/content/Context;Landroid/support/v4/app/NotificationCompatBase$Action;)Landroid/widget/RemoteViews;

    move-result-object v22

    move-object/from16 v21, v22

    .line 84
    move-object/from16 v22, v16

    sget v23, Landroid/support/v7/appcompat/R$id;->media_actions:I

    move-object/from16 v24, v21

    invoke-virtual/range {v22 .. v24}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 75
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    .line 87
    :cond_2
    move/from16 v22, v14

    if-eqz v22, :cond_3

    .line 88
    move-object/from16 v22, v16

    sget v23, Landroid/support/v7/appcompat/R$id;->end_padder:I

    const/16 v24, 0x8

    invoke-virtual/range {v22 .. v24}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 89
    move-object/from16 v22, v16

    sget v23, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 90
    move-object/from16 v22, v16

    sget v23, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    move-object/from16 v24, v15

    invoke-virtual/range {v22 .. v24}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 91
    move-object/from16 v22, v16

    sget v23, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    const-string v24, "setAlpha"

    move-object/from16 v25, v2

    .line 92
    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    sget v26, Landroid/support/v7/appcompat/R$integer;->cancel_button_image_alpha:I

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v25

    .line 91
    invoke-virtual/range {v22 .. v25}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 97
    :goto_2
    move-object/from16 v22, v16

    move-object/from16 v2, v22

    return-object v2

    .line 94
    :cond_3
    move-object/from16 v22, v16

    sget v23, Landroid/support/v7/appcompat/R$id;->end_padder:I

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 95
    move-object/from16 v22, v16

    sget v23, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    const/16 v24, 0x8

    invoke-virtual/range {v22 .. v24}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_2
.end method

.method private static generateMediaActionButton(Landroid/content/Context;Landroid/support/v4/app/NotificationCompatBase$Action;)Landroid/widget/RemoteViews;
    .locals 9

    .prologue
    .line 143
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompatBase$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    move v2, v4

    .line 144
    new-instance v4, Landroid/widget/RemoteViews;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    sget v7, Landroid/support/v7/appcompat/R$layout;->notification_media_action:I

    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object v3, v4

    .line 146
    move-object v4, v3

    sget v5, Landroid/support/v7/appcompat/R$id;->action0:I

    move-object v6, v1

    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompatBase$Action;->getIcon()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 147
    move v4, v2

    if-nez v4, :cond_0

    .line 148
    move-object v4, v3

    sget v5, Landroid/support/v7/appcompat/R$id;->action0:I

    move-object v6, v1

    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompatBase$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 150
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xf

    if-lt v4, v5, :cond_1

    .line 151
    move-object v4, v3

    sget v5, Landroid/support/v7/appcompat/R$id;->action0:I

    move-object v6, v1

    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompatBase$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 153
    :cond_1
    move-object v4, v3

    move-object v0, v4

    return-object v0

    .line 143
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static getBigLayoutResource(I)I
    .locals 3

    .prologue
    .line 157
    move v0, p0

    move v1, v0

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    .line 158
    sget v1, Landroid/support/v7/appcompat/R$layout;->notification_template_big_media_narrow:I

    move v0, v1

    .line 160
    :goto_0
    return v0

    :cond_0
    sget v1, Landroid/support/v7/appcompat/R$layout;->notification_template_big_media:I

    move v0, v1

    goto :goto_0
.end method

.method public static overrideBigContentView(Landroid/app/Notification;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJLjava/util/List;ZLandroid/app/PendingIntent;)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/NotificationCompatBase$Action;",
            ">(",
            "Landroid/app/Notification;",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "I",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/CharSequence;",
            "ZJ",
            "Ljava/util/List",
            "<TT;>;Z",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 105
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-wide/from16 v9, p9

    move-object/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    move-object v14, v0

    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move/from16 v22, v8

    move-wide/from16 v23, v9

    move-object/from16 v25, v11

    move/from16 v26, v12

    move-object/from16 v27, v13

    invoke-static/range {v15 .. v27}, Landroid/support/v7/app/NotificationCompatImplBase;->generateBigContentView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJLjava/util/List;ZLandroid/app/PendingIntent;)Landroid/widget/RemoteViews;

    move-result-object v15

    iput-object v15, v14, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 108
    move v14, v12

    if-eqz v14, :cond_0

    .line 109
    move-object v14, v0

    move-object/from16 v28, v14

    move-object/from16 v14, v28

    move-object/from16 v15, v28

    iget v15, v15, Landroid/app/Notification;->flags:I

    const/16 v16, 0x2

    or-int/lit8 v15, v15, 0x2

    iput v15, v14, Landroid/app/Notification;->flags:I

    .line 111
    :cond_0
    return-void
.end method

.method public static overrideContentView(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJLjava/util/List;[IZLandroid/app/PendingIntent;)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/NotificationCompatBase$Action;",
            ">(",
            "Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "I",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/CharSequence;",
            "ZJ",
            "Ljava/util/List",
            "<TT;>;[IZ",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-wide/from16 v9, p9

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move/from16 v23, v8

    move-wide/from16 v24, v9

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    move/from16 v28, v13

    move-object/from16 v29, v14

    invoke-static/range {v16 .. v29}, Landroid/support/v7/app/NotificationCompatImplBase;->generateContentView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJLjava/util/List;[IZLandroid/app/PendingIntent;)Landroid/widget/RemoteViews;

    move-result-object v16

    move-object/from16 v15, v16

    .line 54
    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v16

    move-object/from16 v17, v15

    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v16

    .line 55
    move/from16 v16, v13

    if-eqz v16, :cond_0

    .line 56
    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v16

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v16

    .line 58
    :cond_0
    return-void
.end method
