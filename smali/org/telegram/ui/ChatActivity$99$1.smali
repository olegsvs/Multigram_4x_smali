.class Lorg/telegram/ui/ChatActivity$99$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$99;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$99;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$99;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChatActivity$99;

    .prologue
    .line 9268
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$99$1;->this$1:Lorg/telegram/ui/ChatActivity$99;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$99$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 9272
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$99$1;->this$1:Lorg/telegram/ui/ChatActivity$99;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$99;->val$progressDialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 9276
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$99$1;->this$1:Lorg/telegram/ui/ChatActivity$99;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$99;->val$progressDialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v3, 0x0

    aput-object v3, v2, v4

    .line 9277
    const/4 v0, 0x2

    .line 9278
    .local v0, "loadType":I
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$99$1;->val$response:Lorg/telegram/tgnet/TLObject;

    if-eqz v2, :cond_0

    .line 9279
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$99$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;

    .line 9280
    .local v1, "participant":Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;->participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    if-nez v2, :cond_0

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;->participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-nez v2, :cond_0

    .line 9281
    const/4 v0, 0x0

    .line 9284
    .end local v1    # "participant":Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$99$1;->this$1:Lorg/telegram/ui/ChatActivity$99;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$99;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$99$1;->this$1:Lorg/telegram/ui/ChatActivity$99;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$99;->val$finalSelectedObject:Lorg/telegram/messenger/MessageObject;

    # invokes: Lorg/telegram/ui/ChatActivity;->createDeleteMessagesAlert(Lorg/telegram/messenger/MessageObject;I)V
    invoke-static {v2, v3, v0}, Lorg/telegram/ui/ChatActivity;->access$18300(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;I)V

    .line 9285
    return-void

    .line 9273
    .end local v0    # "loadType":I
    :catch_0
    move-exception v2

    goto :goto_0
.end method
