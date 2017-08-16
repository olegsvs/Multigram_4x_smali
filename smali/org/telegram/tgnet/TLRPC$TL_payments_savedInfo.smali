.class public Lorg/telegram/tgnet/TLRPC$TL_payments_savedInfo;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_payments_savedInfo"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public flags:I

.field public has_saved_credentials:Z

.field public saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21038
    const v0, -0x4701bc4

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_payments_savedInfo;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21037
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_payments_savedInfo;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 21045
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_payments_savedInfo;->constructor:I

    if-eq v1, p1, :cond_1

    .line 21046
    if-eqz p2, :cond_0

    .line 21047
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in TL_payments_savedInfo"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 21049
    :cond_0
    const/4 v0, 0x0

    .line 21054
    :goto_0
    return-object v0

    .line 21052
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_payments_savedInfo;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_payments_savedInfo;-><init>()V

    .line 21053
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_payments_savedInfo;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_payments_savedInfo;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 21058
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_savedInfo;->flags:I

    .line 21059
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_savedInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_savedInfo;->has_saved_credentials:Z

    .line 21060
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_savedInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 21061
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_savedInfo;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    .line 21063
    :cond_0
    return-void

    .line 21059
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 21066
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_payments_savedInfo;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21067
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_savedInfo;->has_saved_credentials:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_savedInfo;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_savedInfo;->flags:I

    .line 21068
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_savedInfo;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21069
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_savedInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 21070
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_savedInfo;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 21072
    :cond_0
    return-void

    .line 21067
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_savedInfo;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_0
.end method
