.class public Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;
.super Lorg/telegram/tgnet/TLRPC$TL_messageService;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messageService_old2"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26637
    const v0, 0x1d86f70e

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26636
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

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

    .line 26641
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->flags:I

    .line 26642
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->unread:Z

    .line 26643
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->out:Z

    .line 26644
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->mentioned:Z

    .line 26645
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_3

    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->media_unread:Z

    .line 26646
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->id:I

    .line 26647
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->from_id:I

    .line 26648
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 26649
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->date:I

    .line 26650
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$MessageAction;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 26651
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->flags:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->flags:I

    .line 26652
    return-void

    :cond_0
    move v0, v2

    .line 26642
    goto :goto_0

    :cond_1
    move v0, v2

    .line 26643
    goto :goto_1

    :cond_2
    move v0, v2

    .line 26644
    goto :goto_2

    :cond_3
    move v1, v2

    .line 26645
    goto :goto_3
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 26655
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26656
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->unread:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->flags:I

    .line 26657
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->out:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->flags:I

    .line 26658
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->mentioned:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->flags:I

    or-int/lit8 v0, v0, 0x10

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->flags:I

    .line 26659
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->media_unread:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->flags:I

    or-int/lit8 v0, v0, 0x20

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->flags:I

    .line 26660
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26661
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26662
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->from_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26663
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Peer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 26664
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26665
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$MessageAction;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 26666
    return-void

    .line 26656
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 26657
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_1

    .line 26658
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->flags:I

    and-int/lit8 v0, v0, -0x11

    goto :goto_2

    .line 26659
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->flags:I

    and-int/lit8 v0, v0, -0x21

    goto :goto_3
.end method