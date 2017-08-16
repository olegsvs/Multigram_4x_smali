.class public Lorg/telegram/tgnet/TLRPC$TL_langPackStringPluralized;
.super Lorg/telegram/tgnet/TLRPC$LangPackString;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_langPackStringPluralized"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3929
    const v0, 0x6c47ac9f

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_langPackStringPluralized;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3928
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$LangPackString;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 3933
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackStringPluralized;->flags:I

    .line 3934
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackStringPluralized;->key:Ljava/lang/String;

    .line 3935
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackStringPluralized;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3936
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackStringPluralized;->zero_value:Ljava/lang/String;

    .line 3938
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackStringPluralized;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 3939
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackStringPluralized;->one_value:Ljava/lang/String;

    .line 3941
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackStringPluralized;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 3942
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackStringPluralized;->two_value:Ljava/lang/String;

    .line 3944
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackStringPluralized;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 3945
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackStringPluralized;->few_value:Ljava/lang/String;

    .line 3947
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackStringPluralized;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 3948
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackStringPluralized;->many_value:Ljava/lang/String;

    .line 3950
    :cond_4
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackStringPluralized;->other_value:Ljava/lang/String;

    .line 3951
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 3954
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_langPackStringPluralized;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 3955
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackStringPluralized;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 3956
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackStringPluralized;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 3957
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackStringPluralized;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3958
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackStringPluralized;->zero_value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 3960
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackStringPluralized;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 3961
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackStringPluralized;->one_value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 3963
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackStringPluralized;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 3964
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackStringPluralized;->two_value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 3966
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackStringPluralized;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 3967
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackStringPluralized;->few_value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 3969
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackStringPluralized;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 3970
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackStringPluralized;->many_value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 3972
    :cond_4
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackStringPluralized;->other_value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 3973
    return-void
.end method
