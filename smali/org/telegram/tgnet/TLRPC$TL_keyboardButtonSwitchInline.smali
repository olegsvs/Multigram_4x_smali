.class public Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSwitchInline;
.super Lorg/telegram/tgnet/TLRPC$KeyboardButton;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_keyboardButtonSwitchInline"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6502
    const v0, 0x568a748

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSwitchInline;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6501
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$KeyboardButton;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 6506
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSwitchInline;->flags:I

    .line 6507
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSwitchInline;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSwitchInline;->same_peer:Z

    .line 6508
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSwitchInline;->text:Ljava/lang/String;

    .line 6509
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSwitchInline;->query:Ljava/lang/String;

    .line 6510
    return-void

    .line 6507
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 6513
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSwitchInline;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6514
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSwitchInline;->same_peer:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSwitchInline;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSwitchInline;->flags:I

    .line 6515
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSwitchInline;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6516
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSwitchInline;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6517
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSwitchInline;->query:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6518
    return-void

    .line 6514
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSwitchInline;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method
