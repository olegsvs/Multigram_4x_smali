.class public Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;
.super Lorg/telegram/tgnet/TLRPC$upload_CdnFile;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_upload_cdnFile"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28302
    const v0, -0x566035b1

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28301
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$upload_CdnFile;-><init>()V

    return-void
.end method


# virtual methods
.method public freeResources()V
    .locals 1

    .prologue
    .line 28316
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;->disableFree:Z

    if-eqz v0, :cond_1

    .line 28323
    :cond_0
    :goto_0
    return-void

    .line 28319
    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    if-eqz v0, :cond_0

    .line 28320
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 28321
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    goto :goto_0
.end method

.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 28306
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteBuffer(Z)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    .line 28307
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 28310
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28311
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteBuffer(Lorg/telegram/tgnet/NativeByteBuffer;)V

    .line 28312
    return-void
.end method
