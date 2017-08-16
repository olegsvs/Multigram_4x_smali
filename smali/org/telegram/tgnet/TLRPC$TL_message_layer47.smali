.class public Lorg/telegram/tgnet/TLRPC$TL_message_layer47;
.super Lorg/telegram/tgnet/TLRPC$TL_message;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_message_layer47"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26960
    const v0, -0x366d1ea4    # -1203243.5f

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26959
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 12
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 26963
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    iput v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    .line 26964
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_7

    move v7, v8

    :goto_0
    iput-boolean v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->unread:Z

    .line 26965
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_8

    move v7, v8

    :goto_1
    iput-boolean v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->out:Z

    .line 26966
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_9

    move v7, v8

    :goto_2
    iput-boolean v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->mentioned:Z

    .line 26967
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_a

    move v7, v8

    :goto_3
    iput-boolean v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->media_unread:Z

    .line 26968
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    iput v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->id:I

    .line 26969
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit16 v7, v7, 0x100

    if-eqz v7, :cond_0

    .line 26970
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    iput v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->from_id:I

    .line 26972
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    invoke-static {p1, v7, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v7

    iput-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 26973
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->from_id:I

    if-nez v7, :cond_1

    .line 26974
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v7, :cond_b

    .line 26975
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    iput v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->from_id:I

    .line 26980
    :cond_1
    :goto_4
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_3

    .line 26981
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;-><init>()V

    iput-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    .line 26982
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    invoke-static {p1, v7, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v6

    .line 26983
    .local v6, "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v7, :cond_c

    .line 26984
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v10, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    iput v10, v7, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->channel_id:I

    .line 26985
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v10, v7, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    or-int/lit8 v10, v10, 0x2

    iput v10, v7, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    .line 26990
    :cond_2
    :goto_5
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v10

    iput v10, v7, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->date:I

    .line 26992
    .end local v6    # "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    :cond_3
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit16 v7, v7, 0x800

    if-eqz v7, :cond_4

    .line 26993
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    iput v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->via_bot_id:I

    .line 26995
    :cond_4
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_5

    .line 26996
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    iput v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->reply_to_msg_id:I

    .line 26998
    :cond_5
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    iput v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->date:I

    .line 26999
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->message:Ljava/lang/String;

    .line 27000
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit16 v7, v7, 0x200

    if-eqz v7, :cond_d

    .line 27001
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    invoke-static {p1, v7, p2}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v7

    iput-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 27005
    :goto_6
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_6

    .line 27006
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    invoke-static {p1, v7, p2}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-result-object v7

    iput-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    .line 27008
    :cond_6
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_11

    .line 27009
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    .line 27010
    .local v4, "magic":I
    const v7, 0x1cb5c415

    if-eq v4, v7, :cond_e

    .line 27011
    if-eqz p2, :cond_f

    .line 27012
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v10, "wrong Vector magic, got %x"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v4    # "magic":I
    :cond_7
    move v7, v9

    .line 26964
    goto/16 :goto_0

    :cond_8
    move v7, v9

    .line 26965
    goto/16 :goto_1

    :cond_9
    move v7, v9

    .line 26966
    goto/16 :goto_2

    :cond_a
    move v7, v9

    .line 26967
    goto/16 :goto_3

    .line 26977
    :cond_b
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v7, v7

    iput v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->from_id:I

    goto/16 :goto_4

    .line 26986
    .restart local v6    # "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    :cond_c
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    if-eqz v7, :cond_2

    .line 26987
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v10, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    iput v10, v7, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:I

    .line 26988
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v10, v7, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    or-int/lit8 v10, v10, 0x1

    iput v10, v7, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    goto/16 :goto_5

    .line 27003
    .end local v6    # "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    :cond_d
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    goto :goto_6

    .line 27016
    .restart local v4    # "magic":I
    :cond_e
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v3

    .line 27017
    .local v3, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_7
    if-ge v0, v3, :cond_11

    .line 27018
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    invoke-static {p1, v7, p2}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move-result-object v5

    .line 27019
    .local v5, "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    if-nez v5, :cond_10

    .line 27047
    .end local v0    # "a":I
    .end local v3    # "count":I
    .end local v4    # "magic":I
    .end local v5    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_f
    :goto_8
    return-void

    .line 27022
    .restart local v0    # "a":I
    .restart local v3    # "count":I
    .restart local v4    # "magic":I
    .restart local v5    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_10
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->entities:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27017
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 27025
    .end local v0    # "a":I
    .end local v3    # "count":I
    .end local v4    # "magic":I
    .end local v5    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_11
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit16 v7, v7, 0x400

    if-eqz v7, :cond_12

    .line 27026
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    iput v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->views:I

    .line 27028
    :cond_12
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->id:I

    if-ltz v7, :cond_13

    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v7, :cond_16

    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v7, :cond_16

    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v7, :cond_16

    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->message:Ljava/lang/String;

    if-eqz v7, :cond_16

    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->message:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_16

    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->message:Ljava/lang/String;

    const-string/jumbo v10, "-1"

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 27029
    :cond_13
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->attachPath:Ljava/lang/String;

    .line 27030
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->id:I

    if-gez v7, :cond_16

    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->attachPath:Ljava/lang/String;

    const-string/jumbo v10, "||"

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 27031
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->attachPath:Ljava/lang/String;

    const-string/jumbo v10, "\\|\\|"

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 27032
    .local v1, "args":[Ljava/lang/String;
    array-length v7, v1

    if-lez v7, :cond_16

    .line 27033
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->params:Ljava/util/HashMap;

    .line 27034
    const/4 v0, 0x1

    .restart local v0    # "a":I
    :goto_9
    array-length v7, v1

    add-int/lit8 v7, v7, -0x1

    if-ge v0, v7, :cond_15

    .line 27035
    aget-object v7, v1, v0

    const-string/jumbo v10, "\\|=\\|"

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 27036
    .local v2, "args2":[Ljava/lang/String;
    array-length v7, v2

    const/4 v10, 0x2

    if-ne v7, v10, :cond_14

    .line 27037
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->params:Ljava/util/HashMap;

    aget-object v10, v2, v9

    aget-object v11, v2, v8

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27034
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 27040
    .end local v2    # "args2":[Ljava/lang/String;
    :cond_15
    array-length v7, v1

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v1, v7

    iput-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->attachPath:Ljava/lang/String;

    .line 27044
    .end local v0    # "a":I
    .end local v1    # "args":[Ljava/lang/String;
    :cond_16
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_f

    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->id:I

    if-gez v7, :cond_f

    .line 27045
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    iput v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_msg_id:I

    goto/16 :goto_8
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 8
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 27050
    sget v5, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->constructor:I

    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27051
    iget-boolean v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->unread:Z

    if-eqz v5, :cond_6

    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    or-int/lit8 v5, v5, 0x1

    :goto_0
    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    .line 27052
    iget-boolean v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->out:Z

    if-eqz v5, :cond_7

    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    or-int/lit8 v5, v5, 0x2

    :goto_1
    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    .line 27053
    iget-boolean v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->mentioned:Z

    if-eqz v5, :cond_8

    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    or-int/lit8 v5, v5, 0x10

    :goto_2
    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    .line 27054
    iget-boolean v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->media_unread:Z

    if-eqz v5, :cond_9

    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    or-int/lit8 v5, v5, 0x20

    :goto_3
    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    .line 27055
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27056
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->id:I

    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27057
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_0

    .line 27058
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->from_id:I

    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27060
    :cond_0
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v5, p1}, Lorg/telegram/tgnet/TLRPC$Peer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 27061
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_1

    .line 27062
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:I

    if-eqz v5, :cond_a

    .line 27063
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    .line 27064
    .local v4, "peer":Lorg/telegram/tgnet/TLRPC$TL_peerUser;
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;->user_id:I

    .line 27065
    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 27071
    .end local v4    # "peer":Lorg/telegram/tgnet/TLRPC$TL_peerUser;
    :goto_4
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->date:I

    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27073
    :cond_1
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit16 v5, v5, 0x800

    if-eqz v5, :cond_2

    .line 27074
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->via_bot_id:I

    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27076
    :cond_2
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_3

    .line 27077
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->reply_to_msg_id:I

    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27079
    :cond_3
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->date:I

    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27080
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->message:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 27081
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit16 v5, v5, 0x200

    if-eqz v5, :cond_4

    .line 27082
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v5, p1}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 27084
    :cond_4
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_5

    .line 27085
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    invoke-virtual {v5, p1}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 27087
    :cond_5
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_b

    .line 27088
    const v5, 0x1cb5c415

    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27089
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->entities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 27090
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27091
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_5
    if-ge v0, v1, :cond_b

    .line 27092
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->entities:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    invoke-virtual {v5, p1}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 27091
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 27051
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_6
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v5, v5, -0x2

    goto/16 :goto_0

    .line 27052
    :cond_7
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v5, v5, -0x3

    goto/16 :goto_1

    .line 27053
    :cond_8
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v5, v5, -0x11

    goto/16 :goto_2

    .line 27054
    :cond_9
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v5, v5, -0x21

    goto/16 :goto_3

    .line 27067
    :cond_a
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    .line 27068
    .local v4, "peer":Lorg/telegram/tgnet/TLRPC$TL_peerChannel;
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->channel_id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;->channel_id:I

    .line 27069
    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    goto/16 :goto_4

    .line 27095
    .end local v4    # "peer":Lorg/telegram/tgnet/TLRPC$TL_peerChannel;
    :cond_b
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_c

    .line 27096
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->views:I

    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27098
    :cond_c
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->attachPath:Ljava/lang/String;

    .line 27099
    .local v3, "path":Ljava/lang/String;
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->id:I

    if-gez v5, :cond_e

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->params:Ljava/util/HashMap;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->params:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_e

    .line 27100
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->params:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 27101
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "|=|"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "||"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 27102
    goto :goto_6

    .line 27103
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "||"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 27105
    :cond_e
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 27106
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_f

    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->id:I

    if-gez v5, :cond_f

    .line 27107
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_msg_id:I

    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27109
    :cond_f
    return-void
.end method
