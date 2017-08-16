.class public Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;
.super Lorg/telegram/tgnet/TLRPC$Message;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messageForwarded_old2"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27240
    const v0, -0x5c9818ea

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27239
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Message;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 27244
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->flags:I

    .line 27245
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->unread:Z

    .line 27246
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->out:Z

    .line 27247
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->mentioned:Z

    .line 27248
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->media_unread:Z

    .line 27249
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->id:I

    .line 27250
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    .line 27251
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:I

    .line 27252
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    .line 27253
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->date:I

    .line 27254
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->from_id:I

    .line 27255
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 27256
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->date:I

    .line 27257
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->message:Ljava/lang/String;

    .line 27258
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->flags:I

    or-int/lit16 v0, v0, 0x304

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->flags:I

    .line 27259
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 27260
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->id:I

    if-gez v0, :cond_0

    .line 27261
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->fwd_msg_id:I

    .line 27263
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->id:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->message:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->message:Ljava/lang/String;

    const-string/jumbo v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 27264
    :cond_1
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->attachPath:Ljava/lang/String;

    .line 27266
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 27245
    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 27246
    goto/16 :goto_1

    :cond_5
    move v0, v2

    .line 27247
    goto/16 :goto_2

    :cond_6
    move v1, v2

    .line 27248
    goto/16 :goto_3
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 27269
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27270
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->unread:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->flags:I

    .line 27271
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->out:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->flags:I

    .line 27272
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->mentioned:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->flags:I

    or-int/lit8 v0, v0, 0x10

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->flags:I

    .line 27273
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->media_unread:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->flags:I

    or-int/lit8 v0, v0, 0x20

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->flags:I

    .line 27274
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27275
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27276
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27277
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27278
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->from_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27279
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Peer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 27280
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27281
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 27282
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 27283
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->id:I

    if-gez v0, :cond_0

    .line 27284
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->fwd_msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27286
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->attachPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 27287
    return-void

    .line 27270
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 27271
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_1

    .line 27272
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->flags:I

    and-int/lit8 v0, v0, -0x11

    goto :goto_2

    .line 27273
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;->flags:I

    and-int/lit8 v0, v0, -0x21

    goto :goto_3
.end method
