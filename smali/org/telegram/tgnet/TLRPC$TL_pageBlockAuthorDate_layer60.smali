.class public Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate_layer60;
.super Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_pageBlockAuthorDate_layer60"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26429
    const v0, 0x3d5b64f2

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate_layer60;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26428
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 26432
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    .line 26433
    .local v0, "authorString":Ljava/lang/String;
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_textPlain;-><init>()V

    iput-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate_layer60;->author:Lorg/telegram/tgnet/TLRPC$RichText;

    .line 26434
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate_layer60;->author:Lorg/telegram/tgnet/TLRPC$RichText;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_textPlain;->text:Ljava/lang/String;

    .line 26435
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    iput v1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate_layer60;->published_date:I

    .line 26436
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 26439
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate_layer60;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26440
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate_layer60;->author:Lorg/telegram/tgnet/TLRPC$RichText;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 26441
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate_layer60;->published_date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26442
    return-void
.end method
