.class final Lorg/telegram/messenger/SendMessagesHelper$19;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingVideo(Ljava/lang/String;JJIILorg/telegram/messenger/VideoEditedInfo;JLorg/telegram/messenger/MessageObject;Ljava/lang/CharSequence;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$caption:Ljava/lang/CharSequence;

.field final synthetic val$dialog_id:J

.field final synthetic val$duration:J

.field final synthetic val$estimatedSize:J

.field final synthetic val$height:I

.field final synthetic val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

.field final synthetic val$ttl:I

.field final synthetic val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

.field final synthetic val$videoPath:Ljava/lang/String;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(JLorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JIIIJLjava/lang/CharSequence;Lorg/telegram/messenger/MessageObject;)V
    .locals 1

    .prologue
    .line 3853
    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$dialog_id:J

    iput-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iput-object p4, p0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoPath:Ljava/lang/String;

    iput-wide p5, p0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$duration:J

    iput p7, p0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$ttl:I

    iput p8, p0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$height:I

    iput p9, p0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$width:I

    iput-wide p10, p0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$estimatedSize:J

    iput-object p12, p0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$caption:Ljava/lang/CharSequence;

    iput-object p13, p0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 34

    .prologue
    .line 3857
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$dialog_id:J

    long-to-int v3, v10

    if-nez v3, :cond_6

    const/16 v24, 0x1

    .line 3859
    .local v24, "isEncrypted":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-boolean v3, v3, Lorg/telegram/messenger/VideoEditedInfo;->roundVideo:Z

    if-eqz v3, :cond_7

    const/16 v25, 0x1

    .line 3860
    .local v25, "isRound":Z
    :goto_1
    const/4 v2, 0x0

    .line 3861
    .local v2, "thumb":Landroid/graphics/Bitmap;
    const/16 v33, 0x0

    .line 3863
    .local v33, "thumbKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoPath:Ljava/lang/String;

    const-string/jumbo v4, "mp4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v25, :cond_1a

    .line 3864
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoPath:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 3865
    .local v28, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoPath:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 3866
    .local v26, "originalPath":Ljava/lang/String;
    new-instance v32, Ljava/io/File;

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3867
    .local v32, "temp":Ljava/io/File;
    const-wide/16 v30, 0x0

    .line 3869
    .local v30, "startTime":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 3870
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v3, :cond_2

    .line 3871
    if-nez v25, :cond_1

    .line 3872
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$duration:J

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v10, v4, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v10, v4, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 3873
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v3, v3, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v4, v4, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    if-ne v3, v4, :cond_1

    .line 3874
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v4, v4, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 3877
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v10, v3, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-ltz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v0, v3, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    move-wide/from16 v30, v0

    .line 3879
    :cond_2
    :goto_2
    const/16 v20, 0x0

    .line 3880
    .local v20, "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    if-nez v24, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$ttl:I

    if-nez v3, :cond_3

    .line 3881
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    if-nez v24, :cond_9

    const/4 v3, 0x2

    :goto_3
    move-object/from16 v0, v26

    invoke-virtual {v4, v0, v3}, Lorg/telegram/messenger/MessagesStorage;->getSentFile(Ljava/lang/String;I)Lorg/telegram/tgnet/TLObject;

    move-result-object v20

    .end local v20    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    check-cast v20, Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 3883
    .restart local v20    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    :cond_3
    if-nez v20, :cond_10

    .line 3884
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoPath:Ljava/lang/String;

    move-wide/from16 v0, v30

    # invokes: Lorg/telegram/messenger/SendMessagesHelper;->createVideoThumbnail(Ljava/lang/String;J)Landroid/graphics/Bitmap;
    invoke-static {v3, v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->access$1200(Ljava/lang/String;J)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3885
    if-nez v2, :cond_4

    .line 3886
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoPath:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3888
    :cond_4
    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v4, 0x42b40000    # 90.0f

    const/16 v10, 0x37

    move/from16 v0, v24

    invoke-static {v2, v3, v4, v10, v0}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v29

    .line 3889
    .local v29, "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v2, :cond_5

    if-eqz v29, :cond_5

    .line 3890
    if-eqz v25, :cond_d

    .line 3891
    if-eqz v24, :cond_b

    .line 3892
    const/4 v3, 0x7

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-ge v4, v10, :cond_a

    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v7

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    .line 3893
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v10, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "@%d_%d_b2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v10, 0x0

    sget v11, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    int-to-float v11, v11

    sget v12, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v11, v12

    float-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v4, v10

    const/4 v10, 0x1

    sget v11, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    int-to-float v11, v11

    sget v12, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v11, v12

    float-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v4, v10

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    .line 3902
    :cond_5
    :goto_5
    new-instance v20, Lorg/telegram/tgnet/TLRPC$TL_document;

    .end local v20    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    invoke-direct/range {v20 .. v20}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    .line 3903
    .restart local v20    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    move-object/from16 v0, v29

    move-object/from16 v1, v20

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 3904
    move-object/from16 v0, v20

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-nez v3, :cond_e

    .line 3905
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    move-object/from16 v0, v20

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 3906
    move-object/from16 v0, v20

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v4, "s"

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 3910
    :goto_6
    const-string/jumbo v3, "video/mp4"

    move-object/from16 v0, v20

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    .line 3911
    const/4 v3, 0x0

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 3913
    if-eqz v24, :cond_13

    .line 3914
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$dialog_id:J

    const/16 v3, 0x20

    shr-long/2addr v10, v3

    long-to-int v0, v10

    move/from16 v23, v0

    .line 3915
    .local v23, "high_id":I
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v21

    .line 3916
    .local v21, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-nez v21, :cond_f

    .line 3986
    .end local v20    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    .end local v21    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v23    # "high_id":I
    .end local v26    # "originalPath":Ljava/lang/String;
    .end local v28    # "path":Ljava/lang/String;
    .end local v29    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v30    # "startTime":J
    .end local v32    # "temp":Ljava/io/File;
    :goto_7
    return-void

    .line 3857
    .end local v2    # "thumb":Landroid/graphics/Bitmap;
    .end local v24    # "isEncrypted":Z
    .end local v25    # "isRound":Z
    .end local v33    # "thumbKey":Ljava/lang/String;
    :cond_6
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 3859
    .restart local v24    # "isEncrypted":Z
    :cond_7
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 3877
    .restart local v2    # "thumb":Landroid/graphics/Bitmap;
    .restart local v25    # "isRound":Z
    .restart local v26    # "originalPath":Ljava/lang/String;
    .restart local v28    # "path":Ljava/lang/String;
    .restart local v30    # "startTime":J
    .restart local v32    # "temp":Ljava/io/File;
    .restart local v33    # "thumbKey":Ljava/lang/String;
    :cond_8
    const-wide/16 v30, 0x0

    goto/16 :goto_2

    .line 3881
    .restart local v20    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    :cond_9
    const/4 v3, 0x5

    goto/16 :goto_3

    .line 3892
    .restart local v29    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_a
    const/4 v4, 0x1

    goto/16 :goto_4

    .line 3895
    :cond_b
    const/4 v3, 0x3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-ge v4, v10, :cond_c

    const/4 v4, 0x0

    :goto_8
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v7

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    .line 3896
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v10, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "@%d_%d_b"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v10, 0x0

    sget v11, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    int-to-float v11, v11

    sget v12, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v11, v12

    float-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v4, v10

    const/4 v10, 0x1

    sget v11, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    int-to-float v11, v11

    sget v12, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v11, v12

    float-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v4, v10

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    goto/16 :goto_5

    .line 3895
    :cond_c
    const/4 v4, 0x1

    goto :goto_8

    .line 3899
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 3908
    :cond_e
    move-object/from16 v0, v20

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v4, "s"

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    goto/16 :goto_6

    .line 3919
    .restart local v21    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .restart local v23    # "high_id":I
    :cond_f
    move-object/from16 v0, v21

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v3

    const/16 v4, 0x42

    if-lt v3, v4, :cond_12

    .line 3920
    new-instance v18, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    invoke-direct/range {v18 .. v18}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;-><init>()V

    .line 3927
    .end local v21    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v23    # "high_id":I
    .local v18, "attributeVideo":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    :goto_9
    move/from16 v0, v25

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->round_message:Z

    .line 3928
    move-object/from16 v0, v20

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3929
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    invoke-virtual {v3}, Lorg/telegram/messenger/VideoEditedInfo;->needConvert()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 3930
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-boolean v3, v3, Lorg/telegram/messenger/VideoEditedInfo;->muted:Z

    if-eqz v3, :cond_14

    .line 3931
    move-object/from16 v0, v20

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAnimated;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAnimated;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3932
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    move-object/from16 v0, v18

    # invokes: Lorg/telegram/messenger/SendMessagesHelper;->fillVideoAttribute(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;Lorg/telegram/messenger/VideoEditedInfo;)V
    invoke-static {v3, v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->access$1300(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;Lorg/telegram/messenger/VideoEditedInfo;)V

    .line 3933
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    move-object/from16 v0, v18

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->w:I

    iput v4, v3, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    .line 3934
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    move-object/from16 v0, v18

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->h:I

    iput v4, v3, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    .line 3935
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v3, v3, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    move-object/from16 v0, v18

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->w:I

    .line 3936
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v3, v3, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    move-object/from16 v0, v18

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->h:I

    .line 3947
    :goto_a
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$estimatedSize:J

    long-to-int v3, v10

    move-object/from16 v0, v20

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    .line 3948
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "-2147483648_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".mp4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 3949
    .local v22, "fileName":Ljava/lang/String;
    sget v3, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    add-int/lit8 v3, v3, -0x1

    sput v3, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    .line 3950
    new-instance v19, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v3

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3951
    .local v19, "cacheFile":Ljava/io/File;
    const/4 v3, 0x0

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 3952
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v28

    .line 3960
    .end local v18    # "attributeVideo":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    .end local v19    # "cacheFile":Ljava/io/File;
    .end local v22    # "fileName":Ljava/lang/String;
    .end local v29    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_10
    :goto_b
    move-object/from16 v7, v20

    .line 3961
    .local v7, "videoFinal":Lorg/telegram/tgnet/TLRPC$TL_document;
    move-object/from16 v27, v26

    .line 3962
    .local v27, "originalPathFinal":Ljava/lang/String;
    move-object/from16 v8, v28

    .line 3963
    .local v8, "finalPath":Ljava/lang/String;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 3964
    .local v9, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v5, v2

    .line 3965
    .local v5, "thumbFinal":Landroid/graphics/Bitmap;
    move-object/from16 v6, v33

    .line 3966
    .local v6, "thumbKeyFinal":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$caption:Ljava/lang/CharSequence;

    if-eqz v3, :cond_19

    .line 3967
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$caption:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    .line 3971
    :goto_c
    if-eqz v26, :cond_11

    .line 3972
    const-string/jumbo v3, "originalPath"

    move-object/from16 v0, v26

    invoke-virtual {v9, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3974
    :cond_11
    new-instance v3, Lorg/telegram/messenger/SendMessagesHelper$19$1;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/messenger/SendMessagesHelper$19$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper$19;Landroid/graphics/Bitmap;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_7

    .line 3922
    .end local v5    # "thumbFinal":Landroid/graphics/Bitmap;
    .end local v6    # "thumbKeyFinal":Ljava/lang/String;
    .end local v7    # "videoFinal":Lorg/telegram/tgnet/TLRPC$TL_document;
    .end local v8    # "finalPath":Ljava/lang/String;
    .end local v9    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v27    # "originalPathFinal":Ljava/lang/String;
    .restart local v21    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .restart local v23    # "high_id":I
    .restart local v29    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_12
    new-instance v18, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo_layer65;

    invoke-direct/range {v18 .. v18}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo_layer65;-><init>()V

    .restart local v18    # "attributeVideo":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    goto/16 :goto_9

    .line 3925
    .end local v18    # "attributeVideo":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    .end local v21    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v23    # "high_id":I
    :cond_13
    new-instance v18, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    invoke-direct/range {v18 .. v18}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;-><init>()V

    .restart local v18    # "attributeVideo":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    goto/16 :goto_9

    .line 3938
    :cond_14
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$duration:J

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    long-to-int v3, v10

    move-object/from16 v0, v18

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->duration:I

    .line 3939
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v3, v3, Lorg/telegram/messenger/VideoEditedInfo;->rotationValue:I

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v3, v3, Lorg/telegram/messenger/VideoEditedInfo;->rotationValue:I

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_16

    .line 3940
    :cond_15
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$height:I

    move-object/from16 v0, v18

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->w:I

    .line 3941
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$width:I

    move-object/from16 v0, v18

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->h:I

    goto/16 :goto_a

    .line 3943
    :cond_16
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$width:I

    move-object/from16 v0, v18

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->w:I

    .line 3944
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$height:I

    move-object/from16 v0, v18

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->h:I

    goto/16 :goto_a

    .line 3954
    :cond_17
    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3955
    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v3, v10

    move-object/from16 v0, v20

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    .line 3957
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoPath:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    # invokes: Lorg/telegram/messenger/SendMessagesHelper;->fillVideoAttribute(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;Lorg/telegram/messenger/VideoEditedInfo;)V
    invoke-static {v3, v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->access$1300(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;Lorg/telegram/messenger/VideoEditedInfo;)V

    goto/16 :goto_b

    .line 3969
    .end local v18    # "attributeVideo":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    .end local v29    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .restart local v5    # "thumbFinal":Landroid/graphics/Bitmap;
    .restart local v6    # "thumbKeyFinal":Ljava/lang/String;
    .restart local v7    # "videoFinal":Lorg/telegram/tgnet/TLRPC$TL_document;
    .restart local v8    # "finalPath":Ljava/lang/String;
    .restart local v9    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v27    # "originalPathFinal":Ljava/lang/String;
    :cond_19
    const-string/jumbo v3, ""

    iput-object v3, v7, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    goto/16 :goto_c

    .line 3984
    .end local v5    # "thumbFinal":Landroid/graphics/Bitmap;
    .end local v6    # "thumbKeyFinal":Ljava/lang/String;
    .end local v7    # "videoFinal":Lorg/telegram/tgnet/TLRPC$TL_document;
    .end local v8    # "finalPath":Ljava/lang/String;
    .end local v9    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    .end local v26    # "originalPath":Ljava/lang/String;
    .end local v27    # "originalPathFinal":Ljava/lang/String;
    .end local v28    # "path":Ljava/lang/String;
    .end local v30    # "startTime":J
    .end local v32    # "temp":Ljava/io/File;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoPath:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$dialog_id:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$caption:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    # invokes: Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingDocumentInternal(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/lang/CharSequence;)Z
    invoke-static/range {v10 .. v17}, Lorg/telegram/messenger/SendMessagesHelper;->access$1000(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/lang/CharSequence;)Z

    goto/16 :goto_7
.end method
