.class public Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;
.super Lorg/telegram/tgnet/TLRPC$BotInlineResult;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_botInlineResult"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4096
    const v0, -0x64145147

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4095
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$BotInlineResult;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 4100
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->flags:I

    .line 4101
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->id:Ljava/lang/String;

    .line 4102
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->type:Ljava/lang/String;

    .line 4103
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 4104
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->title:Ljava/lang/String;

    .line 4106
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 4107
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->description:Ljava/lang/String;

    .line 4109
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 4110
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->url:Ljava/lang/String;

    .line 4112
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 4113
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->thumb_url:Ljava/lang/String;

    .line 4115
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    .line 4116
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->content_url:Ljava/lang/String;

    .line 4118
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 4119
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->content_type:Ljava/lang/String;

    .line 4121
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 4122
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->w:I

    .line 4124
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    .line 4125
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->h:I

    .line 4127
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    .line 4128
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->duration:I

    .line 4130
    :cond_8
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    .line 4131
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 4134
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4135
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4136
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 4137
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 4138
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 4139
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 4141
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 4142
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 4144
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 4145
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 4147
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 4148
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->thumb_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 4150
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    .line 4151
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->content_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 4153
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 4154
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->content_type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 4156
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 4157
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->w:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4159
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    .line 4160
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->h:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4162
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    .line 4163
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->duration:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4165
    :cond_8
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 4166
    return-void
.end method
