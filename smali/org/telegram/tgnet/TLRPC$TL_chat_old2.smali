.class public Lorg/telegram/tgnet/TLRPC$TL_chat_old2;
.super Lorg/telegram/tgnet/TLRPC$TL_chat;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_chat_old2"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18687
    const v0, 0x7312bc48

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18686
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_chat;-><init>()V

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

    .line 18690
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    .line 18691
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->creator:Z

    .line 18692
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->kicked:Z

    .line 18693
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->left:Z

    .line 18694
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->admins_enabled:Z

    .line 18695
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->admin:Z

    .line 18696
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    :goto_5
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->deactivated:Z

    .line 18697
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->id:I

    .line 18698
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->title:Ljava/lang/String;

    .line 18699
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    .line 18700
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->participants_count:I

    .line 18701
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->date:I

    .line 18702
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->version:I

    .line 18703
    return-void

    :cond_0
    move v0, v2

    .line 18691
    goto :goto_0

    :cond_1
    move v0, v2

    .line 18692
    goto :goto_1

    :cond_2
    move v0, v2

    .line 18693
    goto :goto_2

    :cond_3
    move v0, v2

    .line 18694
    goto :goto_3

    :cond_4
    move v0, v2

    .line 18695
    goto :goto_4

    :cond_5
    move v1, v2

    .line 18696
    goto :goto_5
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 18706
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 18707
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->creator:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    .line 18708
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->kicked:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    .line 18709
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->left:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    or-int/lit8 v0, v0, 0x4

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    .line 18710
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->admins_enabled:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    or-int/lit8 v0, v0, 0x8

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    .line 18711
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->admin:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    or-int/lit8 v0, v0, 0x10

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    .line 18712
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->deactivated:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    or-int/lit8 v0, v0, 0x20

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    .line 18713
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 18714
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 18715
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 18716
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 18717
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->participants_count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 18718
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 18719
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->version:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 18720
    return-void

    .line 18707
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 18708
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_1

    .line 18709
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    and-int/lit8 v0, v0, -0x5

    goto :goto_2

    .line 18710
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    and-int/lit8 v0, v0, -0x9

    goto :goto_3

    .line 18711
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    and-int/lit8 v0, v0, -0x11

    goto :goto_4

    .line 18712
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    and-int/lit8 v0, v0, -0x21

    goto :goto_5
.end method