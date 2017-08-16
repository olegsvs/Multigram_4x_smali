.class public Lorg/telegram/tgnet/TLRPC$TL_message_old7;
.super Lorg/telegram/tgnet/TLRPC$TL_message;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_message_old7"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27113
    const v0, 0x5ba66c13

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27112
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 10
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 27116
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    .line 27117
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_6

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->unread:Z

    .line 27118
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_7

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->out:Z

    .line 27119
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_8

    move v5, v6

    :goto_2
    iput-boolean v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->mentioned:Z

    .line 27120
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_9

    move v5, v6

    :goto_3
    iput-boolean v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->media_unread:Z

    .line 27121
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->id:I

    .line 27122
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_0

    .line 27123
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->from_id:I

    .line 27125
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    invoke-static {p1, v5, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 27126
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->from_id:I

    if-nez v5, :cond_1

    .line 27127
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v5, :cond_a

    .line 27128
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->from_id:I

    .line 27133
    :cond_1
    :goto_4
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_3

    .line 27134
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;-><init>()V

    iput-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    .line 27135
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    invoke-static {p1, v5, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v4

    .line 27136
    .local v4, "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v5, :cond_b

    .line 27137
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v8, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    iput v8, v5, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->channel_id:I

    .line 27138
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v8, v5, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    or-int/lit8 v8, v8, 0x2

    iput v8, v5, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    .line 27143
    :cond_2
    :goto_5
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v8

    iput v8, v5, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->date:I

    .line 27145
    .end local v4    # "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    :cond_3
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_4

    .line 27146
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->reply_to_msg_id:I

    .line 27148
    :cond_4
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->date:I

    .line 27149
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->message:Ljava/lang/String;

    .line 27150
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit16 v5, v5, 0x200

    if-eqz v5, :cond_c

    .line 27151
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    invoke-static {p1, v5, p2}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 27155
    :goto_6
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_5

    .line 27156
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    invoke-static {p1, v5, p2}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    .line 27158
    :cond_5
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_10

    .line 27159
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 27160
    .local v2, "magic":I
    const v5, 0x1cb5c415

    if-eq v2, v5, :cond_d

    .line 27161
    if-eqz p2, :cond_e

    .line 27162
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "wrong Vector magic, got %x"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v2    # "magic":I
    :cond_6
    move v5, v7

    .line 27117
    goto/16 :goto_0

    :cond_7
    move v5, v7

    .line 27118
    goto/16 :goto_1

    :cond_8
    move v5, v7

    .line 27119
    goto/16 :goto_2

    :cond_9
    move v5, v7

    .line 27120
    goto/16 :goto_3

    .line 27130
    :cond_a
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v5, v5

    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->from_id:I

    goto/16 :goto_4

    .line 27139
    .restart local v4    # "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    :cond_b
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    if-eqz v5, :cond_2

    .line 27140
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v8, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    iput v8, v5, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:I

    .line 27141
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v8, v5, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    or-int/lit8 v8, v8, 0x1

    iput v8, v5, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    goto/16 :goto_5

    .line 27153
    .end local v4    # "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    :cond_c
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    goto :goto_6

    .line 27166
    .restart local v2    # "magic":I
    :cond_d
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 27167
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_7
    if-ge v0, v1, :cond_10

    .line 27168
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    invoke-static {p1, v5, p2}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move-result-object v3

    .line 27169
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    if-nez v3, :cond_f

    .line 27184
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v2    # "magic":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_e
    :goto_8
    return-void

    .line 27172
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v2    # "magic":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_f
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->entities:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27167
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 27175
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v2    # "magic":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_10
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_11

    .line 27176
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->views:I

    .line 27178
    :cond_11
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->id:I

    if-ltz v5, :cond_12

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v5, :cond_13

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v5, :cond_13

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v5, :cond_13

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->message:Ljava/lang/String;

    if-eqz v5, :cond_13

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->message:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_13

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->message:Ljava/lang/String;

    const-string/jumbo v6, "-1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 27179
    :cond_12
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->attachPath:Ljava/lang/String;

    .line 27181
    :cond_13
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_e

    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->id:I

    if-gez v5, :cond_e

    .line 27182
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_msg_id:I

    goto :goto_8
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 27187
    sget v3, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->constructor:I

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27188
    iget-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->unread:Z

    if-eqz v3, :cond_5

    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    or-int/lit8 v3, v3, 0x1

    :goto_0
    iput v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    .line 27189
    iget-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->out:Z

    if-eqz v3, :cond_6

    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    or-int/lit8 v3, v3, 0x2

    :goto_1
    iput v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    .line 27190
    iget-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->mentioned:Z

    if-eqz v3, :cond_7

    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    or-int/lit8 v3, v3, 0x10

    :goto_2
    iput v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    .line 27191
    iget-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->media_unread:Z

    if-eqz v3, :cond_8

    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    or-int/lit8 v3, v3, 0x20

    :goto_3
    iput v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    .line 27192
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27193
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->id:I

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27194
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_0

    .line 27195
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->from_id:I

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27197
    :cond_0
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v3, p1}, Lorg/telegram/tgnet/TLRPC$Peer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 27198
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    .line 27199
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:I

    if-eqz v3, :cond_9

    .line 27200
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    .line 27201
    .local v2, "peer":Lorg/telegram/tgnet/TLRPC$TL_peerUser;
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;->user_id:I

    .line 27202
    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 27208
    .end local v2    # "peer":Lorg/telegram/tgnet/TLRPC$TL_peerUser;
    :goto_4
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->date:I

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27210
    :cond_1
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_2

    .line 27211
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->reply_to_msg_id:I

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27213
    :cond_2
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->date:I

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27214
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->message:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 27215
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_3

    .line 27216
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v3, p1}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 27218
    :cond_3
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_4

    .line 27219
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    invoke-virtual {v3, p1}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 27221
    :cond_4
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_a

    .line 27222
    const v3, 0x1cb5c415

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27223
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 27224
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27225
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_5
    if-ge v0, v1, :cond_a

    .line 27226
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    invoke-virtual {v3, p1}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 27225
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 27188
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_5
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v3, v3, -0x2

    goto/16 :goto_0

    .line 27189
    :cond_6
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v3, v3, -0x3

    goto/16 :goto_1

    .line 27190
    :cond_7
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v3, v3, -0x11

    goto/16 :goto_2

    .line 27191
    :cond_8
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v3, v3, -0x21

    goto/16 :goto_3

    .line 27204
    :cond_9
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    .line 27205
    .local v2, "peer":Lorg/telegram/tgnet/TLRPC$TL_peerChannel;
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->channel_id:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;->channel_id:I

    .line 27206
    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    goto :goto_4

    .line 27229
    .end local v2    # "peer":Lorg/telegram/tgnet/TLRPC$TL_peerChannel;
    :cond_a
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_b

    .line 27230
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->views:I

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27232
    :cond_b
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->attachPath:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 27233
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_c

    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->id:I

    if-gez v3, :cond_c

    .line 27234
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_msg_id:I

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27236
    :cond_c
    return-void
.end method
