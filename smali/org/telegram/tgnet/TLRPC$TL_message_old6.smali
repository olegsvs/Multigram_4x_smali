.class public Lorg/telegram/tgnet/TLRPC$TL_message_old6;
.super Lorg/telegram/tgnet/TLRPC$TL_message;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_message_old6"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27291
    const v0, 0x2bebfa86

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27290
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 9
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 27295
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    or-int/lit16 v4, v4, 0x100

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    .line 27296
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->unread:Z

    .line 27297
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_4

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->out:Z

    .line 27298
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_5

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->mentioned:Z

    .line 27299
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_6

    move v4, v5

    :goto_3
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->media_unread:Z

    .line 27300
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->id:I

    .line 27301
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->from_id:I

    .line 27302
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 27303
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_0

    .line 27304
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;-><init>()V

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    .line 27305
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    iput v7, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:I

    .line 27306
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v7, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    or-int/lit8 v7, v7, 0x1

    iput v7, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    .line 27307
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    iput v7, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->date:I

    .line 27309
    :cond_0
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_1

    .line 27310
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->reply_to_msg_id:I

    .line 27312
    :cond_1
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->date:I

    .line 27313
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->message:Ljava/lang/String;

    .line 27314
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_7

    .line 27315
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 27319
    :goto_4
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_2

    .line 27320
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    .line 27322
    :cond_2
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_b

    .line 27323
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 27324
    .local v2, "magic":I
    const v4, 0x1cb5c415

    if-eq v2, v4, :cond_8

    .line 27325
    if-eqz p2, :cond_9

    .line 27326
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "wrong Vector magic, got %x"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v2    # "magic":I
    :cond_3
    move v4, v6

    .line 27296
    goto/16 :goto_0

    :cond_4
    move v4, v6

    .line 27297
    goto/16 :goto_1

    :cond_5
    move v4, v6

    .line 27298
    goto/16 :goto_2

    :cond_6
    move v4, v6

    .line 27299
    goto/16 :goto_3

    .line 27317
    :cond_7
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    goto :goto_4

    .line 27330
    .restart local v2    # "magic":I
    :cond_8
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 27331
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_5
    if-ge v0, v1, :cond_b

    .line 27332
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move-result-object v3

    .line 27333
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    if-nez v3, :cond_a

    .line 27345
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v2    # "magic":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_9
    :goto_6
    return-void

    .line 27336
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v2    # "magic":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_a
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27331
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 27339
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v2    # "magic":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_b
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->id:I

    if-ltz v4, :cond_c

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v4, :cond_d

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v4, :cond_d

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->message:Ljava/lang/String;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->message:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->message:Ljava/lang/String;

    const-string/jumbo v5, "-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 27340
    :cond_c
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->attachPath:Ljava/lang/String;

    .line 27342
    :cond_d
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_9

    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->id:I

    if-gez v4, :cond_9

    .line 27343
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->fwd_msg_id:I

    goto :goto_6
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 27348
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27349
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->unread:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    or-int/lit8 v2, v2, 0x1

    :goto_0
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    .line 27350
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->out:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    or-int/lit8 v2, v2, 0x2

    :goto_1
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    .line 27351
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->mentioned:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    or-int/lit8 v2, v2, 0x10

    :goto_2
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    .line 27352
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->media_unread:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    or-int/lit8 v2, v2, 0x20

    :goto_3
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    .line 27353
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27354
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27355
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->from_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27356
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$Peer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 27357
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    .line 27358
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27359
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->date:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27361
    :cond_0
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1

    .line 27362
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->reply_to_msg_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27364
    :cond_1
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->date:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27365
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->message:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 27366
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_2

    .line 27367
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 27369
    :cond_2
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_3

    .line 27370
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 27372
    :cond_3
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_8

    .line 27373
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27374
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 27375
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27376
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_4
    if-ge v0, v1, :cond_8

    .line 27377
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 27376
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 27349
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_4
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v2, v2, -0x2

    goto/16 :goto_0

    .line 27350
    :cond_5
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v2, v2, -0x3

    goto/16 :goto_1

    .line 27351
    :cond_6
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v2, v2, -0x11

    goto/16 :goto_2

    .line 27352
    :cond_7
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v2, v2, -0x21

    goto/16 :goto_3

    .line 27380
    :cond_8
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->attachPath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 27381
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_9

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->id:I

    if-gez v2, :cond_9

    .line 27382
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->fwd_msg_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27384
    :cond_9
    return-void
.end method
