.class public Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceEmpty;
.super Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updates_channelDifferenceEmpty"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16521
    const v0, 0x3e11affb

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceEmpty;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16520
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 16525
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceEmpty;->flags:I

    .line 16526
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceEmpty;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceEmpty;->isFinal:Z

    .line 16527
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceEmpty;->pts:I

    .line 16528
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceEmpty;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 16529
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceEmpty;->timeout:I

    .line 16531
    :cond_0
    return-void

    .line 16526
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 16534
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceEmpty;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16535
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceEmpty;->isFinal:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceEmpty;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceEmpty;->flags:I

    .line 16536
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceEmpty;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16537
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceEmpty;->pts:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16538
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceEmpty;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 16539
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceEmpty;->timeout:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16541
    :cond_0
    return-void

    .line 16535
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceEmpty;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method
