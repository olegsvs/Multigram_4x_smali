.class public Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;
.super Lorg/telegram/tgnet/TLRPC$PhoneCall;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_phoneCallDiscarded"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7910
    const v0, 0x50ca4de1

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7909
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PhoneCall;-><init>()V

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

    .line 7914
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->flags:I

    .line 7915
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->need_rating:Z

    .line 7916
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->need_debug:Z

    .line 7917
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->id:J

    .line 7918
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7919
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    .line 7921
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 7922
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->duration:I

    .line 7924
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 7915
    goto :goto_0

    :cond_3
    move v1, v2

    .line 7916
    goto :goto_1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 7927
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7928
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->need_rating:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->flags:I

    or-int/lit8 v0, v0, 0x4

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->flags:I

    .line 7929
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->need_debug:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->flags:I

    or-int/lit8 v0, v0, 0x8

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->flags:I

    .line 7930
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7931
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 7932
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7933
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 7935
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 7936
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->duration:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7938
    :cond_1
    return-void

    .line 7928
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->flags:I

    and-int/lit8 v0, v0, -0x5

    goto :goto_0

    .line 7929
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->flags:I

    and-int/lit8 v0, v0, -0x9

    goto :goto_1
.end method
