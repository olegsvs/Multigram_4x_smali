.class public Lorg/telegram/tgnet/TLRPC$TL_channelForbidden_layer67;
.super Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channelForbidden_layer67"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18754
    const v0, -0x7ac887b1

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden_layer67;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18753
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;-><init>()V

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

    .line 18758
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden_layer67;->flags:I

    .line 18759
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden_layer67;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden_layer67;->broadcast:Z

    .line 18760
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden_layer67;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden_layer67;->megagroup:Z

    .line 18761
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden_layer67;->id:I

    .line 18762
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden_layer67;->access_hash:J

    .line 18763
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden_layer67;->title:Ljava/lang/String;

    .line 18764
    return-void

    :cond_0
    move v0, v2

    .line 18759
    goto :goto_0

    :cond_1
    move v1, v2

    .line 18760
    goto :goto_1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 18767
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden_layer67;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 18768
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden_layer67;->broadcast:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden_layer67;->flags:I

    or-int/lit8 v0, v0, 0x20

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden_layer67;->flags:I

    .line 18769
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden_layer67;->megagroup:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden_layer67;->flags:I

    or-int/lit16 v0, v0, 0x100

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden_layer67;->flags:I

    .line 18770
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden_layer67;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 18771
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden_layer67;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 18772
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden_layer67;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 18773
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden_layer67;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 18774
    return-void

    .line 18768
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden_layer67;->flags:I

    and-int/lit8 v0, v0, -0x21

    goto :goto_0

    .line 18769
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden_layer67;->flags:I

    and-int/lit16 v0, v0, -0x101

    goto :goto_1
.end method
