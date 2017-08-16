.class public Lorg/telegram/tgnet/TLRPC$MessageMedia;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageMedia"
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

.field public bytes:[B

.field public caption:Ljava/lang/String;

.field public currency:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public document:Lorg/telegram/tgnet/TLRPC$Document;

.field public first_name:Ljava/lang/String;

.field public flags:I

.field public game:Lorg/telegram/tgnet/TLRPC$TL_game;

.field public geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

.field public last_name:Ljava/lang/String;

.field public phone_number:Ljava/lang/String;

.field public photo:Lorg/telegram/tgnet/TLRPC$Photo;

.field public provider:Ljava/lang/String;

.field public receipt_msg_id:I

.field public shipping_address_requested:Z

.field public start_param:Ljava/lang/String;

.field public test:Z

.field public title:Ljava/lang/String;

.field public total_amount:J

.field public ttl_seconds:I

.field public user_id:I

.field public venue_id:Ljava/lang/String;

.field public video_unused:Lorg/telegram/tgnet/TLRPC$Video;

.field public webpage:Lorg/telegram/tgnet/TLRPC$WebPage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26267
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    .locals 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    const/4 v6, 0x3

    const/4 v8, 0x1

    .line 26296
    const/4 v3, 0x0

    .line 26297
    .local v3, "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    sparse-switch p1, :sswitch_data_0

    .line 26353
    :goto_0
    if-nez v3, :cond_0

    if-eqz p2, :cond_0

    .line 26354
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "can\'t parse magic %x in MessageMedia"

    new-array v6, v8, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 26299
    :sswitch_0
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported_old;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported_old;-><init>()V

    .line 26300
    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_0

    .line 26302
    :sswitch_1
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaAudio_layer45;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaAudio_layer45;-><init>()V

    .line 26303
    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_0

    .line 26305
    :sswitch_2
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto_old;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto_old;-><init>()V

    .line 26306
    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_0

    .line 26308
    :sswitch_3
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;-><init>()V

    .line 26309
    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_0

    .line 26311
    :sswitch_4
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported;-><init>()V

    .line 26312
    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_0

    .line 26314
    :sswitch_5
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    .line 26315
    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_0

    .line 26317
    :sswitch_6
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;-><init>()V

    .line 26318
    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_0

    .line 26320
    :sswitch_7
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideo_old;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideo_old;-><init>()V

    .line 26321
    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_0

    .line 26323
    :sswitch_8
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_old;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_old;-><init>()V

    .line 26324
    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_0

    .line 26326
    :sswitch_9
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_layer68;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_layer68;-><init>()V

    .line 26327
    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_0

    .line 26329
    :sswitch_a
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;-><init>()V

    .line 26330
    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_0

    .line 26332
    :sswitch_b
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    .line 26333
    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_0

    .line 26335
    :sswitch_c
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;-><init>()V

    .line 26336
    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_0

    .line 26338
    :sswitch_d
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;-><init>()V

    .line 26339
    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_0

    .line 26341
    :sswitch_e
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto_layer68;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto_layer68;-><init>()V

    .line 26342
    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_0

    .line 26344
    :sswitch_f
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideo_layer45;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideo_layer45;-><init>()V

    .line 26345
    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_0

    .line 26347
    :sswitch_10
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;-><init>()V

    .line 26348
    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_0

    .line 26350
    :sswitch_11
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;-><init>()V

    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto/16 :goto_0

    .line 26356
    :cond_0
    if-eqz v3, :cond_1

    .line 26357
    invoke-virtual {v3, p0, p2}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 26358
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    if-eqz v4, :cond_4

    .line 26359
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    .line 26360
    .local v2, "mediaDocument":Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_videoEncrypted;

    if-eqz v4, :cond_2

    .line 26361
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;-><init>()V

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 26362
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Video;->key:[B

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    .line 26363
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Video;->iv:[B

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->iv:[B

    .line 26367
    :goto_1
    iput v6, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->flags:I

    .line 26368
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Video;->id:J

    iput-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 26369
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Video;->access_hash:J

    iput-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    .line 26370
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Video;->date:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    .line 26371
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Video;->mime_type:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 26372
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Video;->mime_type:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 26376
    :goto_2
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Video;->size:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    .line 26377
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Video;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 26378
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Video;->dc_id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 26379
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->caption:Ljava/lang/String;

    .line 26380
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;-><init>()V

    .line 26381
    .local v1, "attributeVideo":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Video;->w:I

    iput v4, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->w:I

    .line 26382
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Video;->h:I

    iput v4, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->h:I

    .line 26383
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Video;->duration:I

    iput v4, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->duration:I

    .line 26384
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26385
    move-object v3, v2

    .line 26386
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->caption:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 26387
    const-string/jumbo v4, ""

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->caption:Ljava/lang/String;

    .line 26422
    .end local v1    # "attributeVideo":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    .end local v2    # "mediaDocument":Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;
    :cond_1
    :goto_3
    return-object v3

    .line 26365
    .restart local v2    # "mediaDocument":Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;
    :cond_2
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_1

    .line 26374
    :cond_3
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const-string/jumbo v5, "video/mp4"

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    goto :goto_2

    .line 26389
    .end local v2    # "mediaDocument":Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;
    :cond_4
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    if-eqz v4, :cond_1

    .line 26390
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    .line 26391
    .restart local v2    # "mediaDocument":Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_audioEncrypted;

    if-eqz v4, :cond_5

    .line 26392
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;-><init>()V

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 26393
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Audio;->key:[B

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    .line 26394
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Audio;->iv:[B

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->iv:[B

    .line 26398
    :goto_4
    iput v6, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->flags:I

    .line 26399
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Audio;->id:J

    iput-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 26400
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Audio;->access_hash:J

    iput-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    .line 26401
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Audio;->date:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    .line 26402
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Audio;->mime_type:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 26403
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Audio;->mime_type:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 26407
    :goto_5
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Audio;->size:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    .line 26408
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 26409
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v5, "s"

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 26410
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Audio;->dc_id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 26411
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->caption:Ljava/lang/String;

    .line 26412
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    .line 26413
    .local v0, "attributeAudio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Audio;->duration:I

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->duration:I

    .line 26414
    iput-boolean v8, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->voice:Z

    .line 26415
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26416
    move-object v3, v2

    .line 26417
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->caption:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 26418
    const-string/jumbo v4, ""

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->caption:Ljava/lang/String;

    goto/16 :goto_3

    .line 26396
    .end local v0    # "attributeAudio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    :cond_5
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_4

    .line 26405
    :cond_6
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const-string/jumbo v5, "audio/ogg"

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    goto :goto_5

    .line 26297
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7baaecb9 -> :sswitch_3
        -0x607b0b62 -> :sswitch_4
        -0x5d2dbd70 -> :sswitch_7
        -0x5cd22a00 -> :sswitch_11
        -0x4addc4f1 -> :sswitch_d
        -0x39497d00 -> :sswitch_1
        -0x373ba5d6 -> :sswitch_2
        -0xc1fd158 -> :sswitch_9
        -0x24e6ff8 -> :sswitch_a
        0x29632a36 -> :sswitch_0
        0x2fda2204 -> :sswitch_8
        0x3d8ce53d -> :sswitch_e
        0x3ded6320 -> :sswitch_5
        0x56e0d474 -> :sswitch_10
        0x5bcf1675 -> :sswitch_f
        0x5e7d2f39 -> :sswitch_c
        0x7912b71f -> :sswitch_6
        0x7c4414d3 -> :sswitch_b
    .end sparse-switch
.end method
