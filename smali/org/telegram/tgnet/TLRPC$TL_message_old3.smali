.class public Lorg/telegram/tgnet/TLRPC$TL_message_old3;
.super Lorg/telegram/tgnet/TLRPC$TL_message;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_message_old3"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27592
    const v0, -0x5854e66f

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27591
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

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

    .line 27595
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    or-int/lit16 v0, v0, 0x100

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    .line 27596
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->unread:Z

    .line 27597
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->out:Z

    .line 27598
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->mentioned:Z

    .line 27599
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->media_unread:Z

    .line 27600
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->id:I

    .line 27601
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->from_id:I

    .line 27602
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 27603
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 27604
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    .line 27605
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:I

    .line 27606
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    .line 27607
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->date:I

    .line 27609
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 27610
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->reply_to_msg_id:I

    .line 27612
    :cond_1
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->date:I

    .line 27613
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->message:Ljava/lang/String;

    .line 27614
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 27615
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->id:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->message:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->message:Ljava/lang/String;

    const-string/jumbo v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 27616
    :cond_2
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->attachPath:Ljava/lang/String;

    .line 27618
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->id:I

    if-gez v0, :cond_4

    .line 27619
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->fwd_msg_id:I

    .line 27621
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 27596
    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 27597
    goto/16 :goto_1

    :cond_7
    move v0, v2

    .line 27598
    goto/16 :goto_2

    :cond_8
    move v1, v2

    .line 27599
    goto/16 :goto_3
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 27624
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27625
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->unread:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    .line 27626
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->out:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    .line 27627
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->mentioned:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    or-int/lit8 v0, v0, 0x10

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    .line 27628
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->media_unread:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    or-int/lit8 v0, v0, 0x20

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    .line 27629
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27630
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27631
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->from_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27632
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Peer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 27633
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 27634
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27635
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27637
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 27638
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->reply_to_msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27640
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27641
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 27642
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 27643
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->attachPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 27644
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->id:I

    if-gez v0, :cond_2

    .line 27645
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->fwd_msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27647
    :cond_2
    return-void

    .line 27625
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 27626
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_1

    .line 27627
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    and-int/lit8 v0, v0, -0x11

    goto :goto_2

    .line 27628
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    and-int/lit8 v0, v0, -0x21

    goto :goto_3
.end method