.class public Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;
.super Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channelParticipantAdmin"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17160
    const v0, -0x57d05768

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17159
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 17164
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;->flags:I

    .line 17165
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;->can_edit:Z

    .line 17166
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;->user_id:I

    .line 17167
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;->inviter_id:I

    .line 17168
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;->promoted_by:I

    .line 17169
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;->date:I

    .line 17170
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    .line 17171
    return-void

    .line 17165
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 17174
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17175
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;->can_edit:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;->flags:I

    .line 17176
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17177
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;->user_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17178
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;->inviter_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17179
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;->promoted_by:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17180
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17181
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 17182
    return-void

    .line 17175
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method
